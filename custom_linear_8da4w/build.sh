# Build pthreadpool
cmake -S pthreadpool -B pthreadpool/build -G Ninja -DCMAKE_BUILD_TYPE=Release
pushd pthreadpool/build
cmake --build .
mkdir install
cmake --install . --prefix install
popd

# Build custom_linear_8da4w
rm -rf build
mkdir build
# cmake -DCMAKE_PREFIX_PATH="$(python3 -c 'import torch.utils; print(torch.utils.cmake_prefix_path)')" -DTORCHCHAT_ROOT="${PWD}/.." -S . -B build -GNinja -DCMAKE_BUILD_TYPE=Release
cmake -DCMAKE_PREFIX_PATH="/Users/scroy/repos/pytorch/torch/share/cmake" -DTORCHCHAT_ROOT="${PWD}/.." -S . -B build -GNinja -DCMAKE_BUILD_TYPE=Release
cmake --build build