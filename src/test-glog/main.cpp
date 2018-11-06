// GLOG_logtostderr=1 ./test-glog

#include <iostream>
#include <glog/logging.h>

int main(int argc, char* argv[]) {
	google::InitGoogleLogging(argv[0]);

	LOG(INFO) << "Hello glog!" << std::endl;
	return 0;
}

