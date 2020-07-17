cur_path=`pwd`
mkdir -p ${cur_path}/lib1/build
cd ${cur_path}/lib1/build
rm -rf *
cmake ..
make -j

mkdir -p ${cur_path}/lib2/build
cd ${cur_path}/lib2/build
rm -rf *
cmake ..
make -j

mkdir -p ${cur_path}/test/build
cd ${cur_path}/test/build
rm -rf *
cmake ..
make -j

echo "Start run testvisibility"
./testvisibility