
call "c:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" x64
set path=%CD%\Custom;%path%
set MY_CUSTOM_ENVVARIABLE=hello world
mkdir build
pushd build
cmake -G "Visual Studio 16 2019" -A x64 ..
cmake --build .
popd
