TF_CFLAGS := -I/software/tensorflow/1.13.1/python36-gpu/lib/python3.6/site-packages/tensorflow/include -D_GLIBCXX_USE_CXX11_ABI=0
TF_LFLAGS := -L/software/tensorflow/1.13.1/python36-gpu/lib/python3.6/site-packages/tensorflow -ltensorflow_framework
OCT_CFLAGS := -I../../octree/octree
OCT_LFLAGS := -L../../octree/build -loctree_lib -lrply

NVCC_FLAGS1 := -std=c++11 -O2 -c
NVCC_FLAGS2 := $(TF_CFLAGS) $(OCT_CFLAGS) -I /usr/local/cuda-10.1/include -x cu -Xcompiler -fPIC -D GOOGLE_CUDA=1 -I /usr/local -expt-relaxed-constexpr -DNDEBUG
CC_FLAGS1 := -std=c++11 -O2
CC_FLAGS2 := $(TF_CFLAGS) $(OCT_CFLAGS) -I /usr/local/cuda-10.1/include -L /usr/local/cuda-10.1/lib64 -D GOOGLE_CUDA=1 $(TF_LFLAGS) $(OCT_LFLAGS) -fPIC -lcudart

CC := g++
NVCC := /usr/local/cuda-10.1/bin/nvcc

cpu_objects := object/octree2col_op.cc.o object/octree_align_op.cc.o object/octree_batch_op.cc.o object/octree_conv_op.cc.o object/octree_grow_op.cc.o object/octree_mask_op.cc.o object/octree_max_pool_op.cc.o object/octree_new_op.cc.o object/octree_pad_op.cc.o object/octree_property_op.cc.o object/octree_set_property_op.cc.o object/octree_update_op.cc.o object/points2octree_op.cc.o object/transform_points_op.cc.o
gpu_objects := object/tensorflow_gpu_gemm.cu.cc.o

.PHONY : all clean

all : libocnn.so

libocnn.so : $(cpu_objects) $(gpu_objects)
	$(CC) $(CC_FLAGS1) -shared -o libocnn.so object/*.o $(CC_FLAGS2)

object/octree2col_op.cc.o :  octree2col_op.cc
	$(CC) $(CC_FLAGS1) -c octree2col_op.cc $(CC_FLAGS2) -o object/octree2col_op.cc.o

object/octree_align_op.cc.o :  octree_align_op.cc
	$(CC) $(CC_FLAGS1) -c octree_align_op.cc $(CC_FLAGS2) -o object/octree_align_op.cc.o

object/octree_batch_op.cc.o :  octree_batch_op.cc
	$(CC) $(CC_FLAGS1) -c octree_batch_op.cc $(CC_FLAGS2) -o object/octree_batch_op.cc.o

object/octree_conv_op.cc.o : tensorflow_gpu_gemm.h octree_conv_op.cc
	$(CC) $(CC_FLAGS1) -c octree_conv_op.cc $(CC_FLAGS2) -o object/octree_conv_op.cc.o

object/octree_grow_op.cc.o :  octree_grow_op.cc
	$(CC) $(CC_FLAGS1) -c octree_grow_op.cc $(CC_FLAGS2) -o object/octree_grow_op.cc.o

object/octree_mask_op.cc.o :  octree_mask_op.cc
	$(CC) $(CC_FLAGS1) -c octree_mask_op.cc $(CC_FLAGS2) -o object/octree_mask_op.cc.o

object/octree_max_pool_op.cc.o :  octree_max_pool_op.cc
	$(CC) $(CC_FLAGS1) -c octree_max_pool_op.cc $(CC_FLAGS2) -o object/octree_max_pool_op.cc.o

object/octree_new_op.cc.o :  octree_new_op.cc
	$(CC) $(CC_FLAGS1) -c octree_new_op.cc $(CC_FLAGS2) -o object/octree_new_op.cc.o

object/octree_pad_op.cc.o :  octree_pad_op.cc
	$(CC) $(CC_FLAGS1) -c octree_pad_op.cc $(CC_FLAGS2) -o object/octree_pad_op.cc.o

object/octree_property_op.cc.o :  octree_property_op.cc
	$(CC) $(CC_FLAGS1) -c octree_property_op.cc $(CC_FLAGS2) -o object/octree_property_op.cc.o

object/octree_set_property_op.cc.o :  octree_set_property_op.cc
	$(CC) $(CC_FLAGS1) -c octree_set_property_op.cc $(CC_FLAGS2) -o object/octree_set_property_op.cc.o

object/octree_update_op.cc.o :  octree_update_op.cc
	$(CC) $(CC_FLAGS1) -c octree_update_op.cc $(CC_FLAGS2) -o object/octree_update_op.cc.o

object/points2octree_op.cc.o :  points2octree_op.cc
	$(CC) $(CC_FLAGS1) -c points2octree_op.cc $(CC_FLAGS2) -o object/points2octree_op.cc.o

object/transform_points_op.cc.o :  transform_points_op.cc
	$(CC) $(CC_FLAGS1) -c transform_points_op.cc $(CC_FLAGS2) -o object/transform_points_op.cc.o

object/tensorflow_gpu_gemm.cu.cc.o : tensorflow_gpu_gemm.h tensorflow_gpu_gemm.cu.cc
	$(NVCC) $(NVCC_FLAGS1) tensorflow_gpu_gemm.cu.cc $(NVCC_FLAGS2) -o object/tensorflow_gpu_gemm.cu.cc.o

clean :
	 rm object/*.o

