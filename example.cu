#include "gtest/gtest.h"
#include "philox-wrapper/PhiloxWrapper.h"

__global__ void test_kernel(int rngSeed, int rngCounter) {
    philox_wrapper::PhiloxWrapper<double> rng(
        blockIdx.x * blockDim.x + threadIdx.x, rngSeed, rngCounter);
    printf("%f\n", rng.rand2());
}

TEST(Stupid, Example) {
    int seed = 123;
    for (size_t i = 0; i < 5; ++i) {
        test_kernel<<<1, 1>>>(
            seed, philox_wrapper::PhiloxWrapper<double>::getNextCounter());
    }
    cudaDeviceSynchronize();
}
