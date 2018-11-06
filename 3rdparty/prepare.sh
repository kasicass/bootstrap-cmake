#!/usr/bin/sh env

cd 3rdparty

# boost-cmake
if [ ! -d "boost-cmake" ]; then
	echo "prepare boost-cmake"
	wget https://github.com/Orphis/boost-cmake/archive/v1.67.0.tar.gz
	tar zxf v1.67.0.tar.gz
	mv boost-cmake-1.67.0 boost-cmake
	rm -rf v1.67.0.tar.gz
fi  

# boost
if [ ! -d "boost" ]; then  
	echo "prepare boost"
	if [ ! -f "boost_1_67_0.tar.gz" ]; then
		wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
	fi
	tar zxf boost_1_67_0.tar.gz
	mv boost_1_67_0 boost
	# rm -rf boost_1_67_0.tar.gz
fi

# gflags
if [ ! -d "gflags" ]; then
	echo "prepare gflags"
	wget https://github.com/gflags/gflags/archive/v2.2.1.tar.gz
	tar zxf v2.2.1.tar.gz
	mv gflags-2.2.1 gflags
	rm -rf v2.2.1.tar.gz
fi

# glog
if [ ! -d "glog" ]; then
	echo "prepare glog"
	wget https://github.com/google/glog/archive/v0.3.5.tar.gz
	tar zxf v0.3.5.tar.gz
	mv glog-0.3.5 glog
	rm -rf v0.3.5.tar.gz
fi

