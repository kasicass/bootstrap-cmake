#include <iostream>
#include <gflags/gflags.h>

DEFINE_bool(flyme, true, "fly~ fly~");
DEFINE_string(langs, "english,french,german", "comma-separated list of languages");

int main(int argc, char* argv[]) {
	gflags::SetUsageMessage("Usage:");
	gflags::SetVersionString("0.1");
	gflags::ParseCommandLineFlags(&argc, &argv, true);

	std::cout << "flyme: " << FLAGS_flyme << std::endl;
	std::cout << "langs: " << FLAGS_langs << std::endl;
	return 0;
}

