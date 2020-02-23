#ifndef _OCTREE_OCTREE_UTIL_
#define _OCTREE_OCTREE_UTIL_

#include <cstdint>
#include <vector>
#include <string>
#include <unordered_map>

using std::string;
using std::vector;
using std::unordered_map;
typedef uint32_t uint32;


// A singleton class to hold global & common stuff for octree neighbor
class NeighHelper {
 public:
  static NeighHelper& Get() {
    static NeighHelper instance; // Guaranteed to be destroyed.
    return instance;             // Instantiated on first use.
  }

  static vector<int>& get_parent_array() { return Get().parent_; }
  static vector<int>& get_dis_array() { return Get().displacement_; }
  static vector<int>& get_ni(const vector<int>& kernel_size);

 private:
  NeighHelper() { init_neigh_index(); }
  void init_neigh_index();

  // avoid accidentally getting copies of your singleton appearing.
  NeighHelper(NeighHelper const&);
  void operator=(NeighHelper const&);

 protected:
  // used to get the neighbor information
  vector<vector<int> > ni_;
  unordered_map<string, int> ni_map_;

  // used to calculate the neighbor information
  vector<int> parent_;
  vector<int> displacement_;
};


// !!! TODO: support gpu stream for gpu functions !!!

int num_elements(const vector<int>& vec);
void resize_with_last_val(vector<int>& vec, const int size);

template <typename Dtype>
void memset_cpu(const int N, const Dtype alpha, Dtype *X);
template <typename Dtype>
void memset_gpu(const int N, const Dtype alpha, Dtype *X);
template <typename Dtype>
void memcpy_cpu(const int N, const Dtype* X, Dtype* Y);
template <typename Dtype>
void memcpy_gpu(const int N, const Dtype* X, Dtype* Y);


template<typename Dtype>
void pad_forward_cpu(Dtype* Y, const int Hy, const int Cy,
    const Dtype* X, const int Hx, const int* label);
template<typename Dtype>
void pad_forward_gpu(Dtype* Y, const int Hy, const int Cy,
    const Dtype* X, const int Hx, const int* label);
template<typename Dtype>
void pad_backward_cpu(Dtype* X, const int Hx, const int Cx,
    const Dtype* Y, const int Hy, const int* label);
template<typename Dtype>
void pad_backward_gpu(Dtype* X, const int Hx, const int Cx,
    const Dtype* Y, const int Hy, const int* label);


template <typename Dtype>
void octree2col_cpu(Dtype* data_col, const Dtype* data_octree,
    const int channel, const int height, const int kernel_sdim,
    const int stride, const int* neigh, const int* ni,
    const int height_col, const int n);
template <typename Dtype>
void octree2col_gpu(Dtype* data_col, const Dtype* data_octree,
    const int channel, const int height, const int kernel_sdim,
    const int stride, const int* neigh, const int* ni,
    const int height_col, const int n);
template <typename Dtype>
void col2octree_cpu(const Dtype* data_col, Dtype* data_octree,
    const int channel, const int height, const int kernel_sdim,
    const int stride, const int* neigh, const int* ni,
    const int height_col, const int n);
template <typename Dtype>
void col2octree_gpu(const Dtype* data_col, Dtype* data_octree,
    const int channel, const int height, const int kernel_sdim,
    const int stride, const int* neigh, const int* ni,
    const int height_col, const int n);


template <typename Dtype>
void octree_max_pool_cpu(Dtype* top_data, int top_h, int* mask,
    const Dtype* btm_data, int btm_h, int channel);
template <typename Dtype>
void octree_max_pool_gpu(Dtype* top_data, int top_h, int* mask,
    const Dtype* btm_data, int btm_h, int channel);
template <typename Dtype>
void octree_max_unpool_cpu(const Dtype* top_diff, int top_h, const int* mask,
    Dtype* btm_diff, int btm_h, int channel);
template <typename Dtype>
void octree_max_unpool_gpu(const Dtype* top_diff, int top_h, const int* mask,
    Dtype* btm_diff, int btm_h, int channel);
template <typename Dtype>
void octree_mask_pool_cpu(Dtype* top_data, int top_h, const int* mask,
    const Dtype* btm_data, int btm_h, int channel);
template <typename Dtype>
void octree_mask_pool_gpu(Dtype* top_data, int top_h, const int* mask,
    const Dtype* btm_data, int btm_h, int channel);


void calc_neigh_cpu(int* neigh_child, const int* neigh, const int* child,
    const int node_num);
void calc_neigh_gpu(int* neigh_child, const int* neigh, const int* children,
    const int node_num, const int* parent, const int* dis);
void calc_neigh_cpu(int* neigh, const int depth, const int batch_size);
void calc_neigh_gpu(int* neigh, const int depth, const int batch_size);


void generate_key_gpu(uint32* key_child, const uint32* key, const int* child,
    const int node_num);
void generate_key_cpu(uint32* key_child, const uint32* key, const int* child,
    const int node_num);
void generate_key_gpu(uint32* key, const int depth, const int batch_size);
void generate_key_cpu(uint32* key, const int depth, const int batch_size);


template <typename Dtype>
void generate_label_cpu(int* label_data, int& top_h, const Dtype* bottom_data,
    const int bottom_h, const int mask);
template <typename Dtype>
void generate_label_gpu(int* label_data, int& top_h, const Dtype* bottom_data,
    const int bottom_h, const int mask);


template <typename Dtype>
void sequence_gpu(Dtype* ptr, const int num);


void search_key_cpu(int* idx, const uint32* key, const int n_key,
    const uint32* query, const int n_query);
void search_key_gpu(int* idx, const uint32* key, const int n_key,
    const uint32* query, const int n_query);


template <typename Dtype>
void align_forward_gpu(Dtype* top_data, const int top_h, const int channel,
    const Dtype* btm_data, const int btm_h, const int* idx, const int num);
template <typename Dtype>
void align_backward_gpu(const Dtype* top_data, const int top_h, const int channel,
    Dtype* btm_data, const int btm_h, const int* idx, const int num);


void octree_mask_gpu(float* out_data, const float* in_data, const int* label,
    int height, int mask, int num);


// !!! Caveat: for the following two functions, pt and depth
// must be consistent, i.e pt must be in the range [0, 2^depth]^3
void compute_key(uint32& key, const uint32* pt, const int depth);
void compute_pt(uint32* pt, const uint32& key, const int depth);
void xyz2key_cpu(uint32* key, const uint32* xyz, const int num, const int depth);
void xyz2key_gpu(uint32* key, const uint32* xyz, const int num, const int depth);
void key2xyz_cpu(uint32* xyz, const uint32* key, const int num, const int depth);
void key2xyz_gpu(uint32* xyz, const uint32* key, const int num, const int depth);
//int content_flag(string str);
template<typename Dtype>
void key2xyz(Dtype* xyz, const uint32 key, const int depth);

#endif // _OCTREE_OCTREE_UTIL_
