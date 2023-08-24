#include <iostream>
#include <string>
#include "handleQuery.h"

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        std::cerr << "Usage: " << argv[0] << " <query>" << std::endl;
        return 1;
    }

    std::string query = argv[1];
    handleQuery(query);

    return 0;
}