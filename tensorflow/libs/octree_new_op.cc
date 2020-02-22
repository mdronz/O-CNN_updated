#include "octree_nn.h"
#include "octree_parser.h"

#include <cuda_runtime.h>
#include <tensorflow/core/framework/op.h>
#include <tensorflow/core/framework/op_kernel.h>
#include <tensorflow/core/framework/shape_inference.h>

namespace tensorflow {

REGISTER_OP("OctreeNew")
    .Attr("batch_size: int")
    .Attr("adaptive_layer: int = 0")
    .Attr("channel: int = 3")
    .Attr("has_displace: bool = false")
    .Output("out_octree: int8")
    .SetShapeFn([](::tensorflow::shape_inference::InferenceContext* c) {
      c->set_output(0, c->MakeShape({ c->UnknownDim() }));
      return Status::OK();
    })
    .Doc(R"doc(Octree new operator.)doc");


class OctreeNewOP : public OpKernel {
 public:
  explicit OctreeNewOP(OpKernelConstruction* context) : OpKernel(context) {
    OP_REQUIRES_OK(context, context->GetAttr("batch_size", &batch_size_));
    OP_REQUIRES_OK(context, context->GetAttr("adaptive_layer", &adaptive_));
    OP_REQUIRES_OK(context, context->GetAttr("has_displace", &has_displace_));
    OP_REQUIRES_OK(context, context->GetAttr("channel", &channel_));
  }

  void Compute(OpKernelContext* context) override {
    CHECK_GE(batch_size_, 1);
    int node_num_ = batch_size_;
    int depth_ = 0;

    // octree info
    OctreeInfo oct_info_;
    oct_info_.set_batch_size(batch_size_);
    oct_info_.set_depth(depth_);
    oct_info_.set_full_layer(depth_);
    oct_info_.set_node_dis(has_displace_);
    if (adaptive_ > 1) {
      oct_info_.set_adaptive(true);
      oct_info_.set_adaptive_layer(adaptive_);
    } else  {
      oct_info_.set_adaptive(false);
    }
    oct_info_.set_key2xyz(true);
    oct_info_.set_property(OctreeInfo::kKey, 2, -1);
    oct_info_.set_property(OctreeInfo::kChild, 1, -1);
    oct_info_.set_property(OctreeInfo::kNeigh, 8, -1);
    oct_info_.set_property(OctreeInfo::kFeature, channel_, -1);
    float bbmin[] = { 0, 0, 0 };
    float bbmax[] = { 2, 2, 2 };
    oct_info_.set_bbox(bbmin, bbmax);
    oct_info_.set_nnum(depth_, node_num_);
    oct_info_.set_nnum_cum();
    oct_info_.set_nempty(depth_, node_num_);
    oct_info_.set_ptr_dis();

    // out octree
    Tensor* tensor_out = nullptr;
    TensorShape shape_out({ oct_info_.sizeof_octree() });
    OP_REQUIRES_OK(context, context->allocate_output(0, shape_out, &tensor_out));
    auto* ptr_out = tensor_out->flat<int8>().data();
    cudaMemset(ptr_out, 0, tensor_out->NumElements());
    
    // set octree, skip the propoerties neigh and feature
    OctreeParser octree_out;
    octree_out.set_gpu(ptr_out, &oct_info_);
    sequence_gpu(octree_out.mutable_key_gpu(depth_), node_num_);
    sequence_gpu(octree_out.mutable_children_gpu(depth_), node_num_);
  }

 private:
  int batch_size_;
  int adaptive_;
  int channel_;
  bool has_displace_;
};

REGISTER_KERNEL_BUILDER(Name("OctreeNew").Device(DEVICE_GPU), OctreeNewOP);

}  // namespace tensorflow
