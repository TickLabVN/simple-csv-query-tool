#include <iostream>
#include "handleQuery.h"

void handleQuery(const std::string &query)
{
    static std::unordered_map<std::string, std::string> messageMap = {
        {"SELECT * FROM data.csv", "1,John,25\n2,Jane,30\n3,Michael,22"},
        {"SELECT * WHERE id = \'1\' FROM data.csv", "1,John,25"}};

    auto it = messageMap.find(query);
    if (it != messageMap.end())
    {
        std::cout << it->second << std::endl;
    }
    else
    {
        std::cout << "Invalid query" << std::endl;
    }
}
