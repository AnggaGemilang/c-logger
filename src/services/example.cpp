#include "example.h"
#include <vector> 
#include <iostream>
#include "../utils/log.h"

void ExampleService::exampleMethod(){
    try {
        std::vector<int> vect{1, 2, 3};
        std::cout << vect.at(5) << std::endl;
    } catch(std::exception const& err) {
        LOGGER_ERROR(err.what())
    }
}