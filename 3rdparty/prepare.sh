#!/usr/bin/sh env

cd 3rdparty

# boost-cmake
if [ ! -d "boost-cmake" ]; then
	echo "prepare boost-cmake"
	wget https://github.com/Orphis/boost-cmake/archive/v1.67.0.tar.gz
	tar zxf v1.67.0.tar.gz
	mv boost-cmake-1.67.0 boost-cmake
	rm v1.67.0.tar.gz
fi  

# boost
if [ ! -d "boost" ]; then  
	echo "prepare boost"
	if [ ! -f "boost_1_67_0.tar.gz" ]; then
		wget https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.gz
	fi
	tar zxf boost_1_67_0.tar.gz
	mv boost_1_67_0 boost
	# rm boost_1_67_0.tar.gz
fi

