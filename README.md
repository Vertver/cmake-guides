# cmake-guids
CMake examples for everyone

# How to build

1. Install libraries
```
# On Windows:

vcpkg install zlib:x64-windows

# On other platforms:

sudo apt-get install libz-dev # Debian
brew install zlib-devel # MacOS
```

2. Clone and build
```
git clone https://github.com/Vertver/cmake-guides.git
cd cmake-guides
mkdir build
cd build

# On Windows:

cmake .. -DCMAKE_TOOLCHAIN_FILE="PathToYourVcpkgCmake"

# On other platforms:

cmake ..
make
```

