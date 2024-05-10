#include <iostream>
#include "utils/logger.h"
#include "services/example.h"
#include "utils/log.h"

// Logger setup
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"
#include "spdlog/sinks/rotating_file_sink.h"
#define DEFAULT_LOGGER_NAME_2 "log_manager_2"

void loggerSetUp(){
    // Konfigurasi untuk logging di console
    auto console_sink = std::make_shared<spdlog::sinks::stdout_color_sink_mt>();
    // Mengatur pattern pada console
    console_sink->set_pattern("%Y-%m-%d %H:%M:%S [thread %t] %^%-7l%$ -- %g:%# - %v");

    std::string base_filename = "log"; // base nama file log
    std::string filename_pattern = "logs/" + base_filename + ".txt"; // nama file log
    size_t max_file_size = 1024 * 1024 * 5; // ukuran maksimal file
    int max_files = 3; // maksimal jumlah file

    // Konfigurasi untuk logging pada file
    auto file_sink = std::make_shared<spdlog::sinks::rotating_file_sink_mt>(filename_pattern, max_file_size, max_files);
    // Mengatur pattern pada file
    file_sink->set_pattern("%Y-%m-%d %H:%M:%S [thread %t] %^%-7l%$ -- %g:%# - %v");

    // Mendaftarkan konfigurasi pada sinks
    std::vector<spdlog::sink_ptr> sinks{ console_sink, file_sink };
    // Mendaftarkan sink pada logger
    auto logger = std::make_shared<spdlog::logger>(DEFAULT_LOGGER_NAME_2, sinks.begin(), sinks.end());
    // Mengatur level log (debug)
    logger->set_level(spdlog::level::debug);
    // Mendaftarkan logger pada spdlog
    spdlog::register_logger(logger);    
}

int main(int argc, char** argv) {

    // Dijadiin objek
    Logger logger;

    // Dijadiin method
    // loggerSetUp();

    // Tes dari file
    ExampleService exampleService;
    exampleService.exampleMethod();

    // Tes
    LOGGER_INFO("Example Info")
    LOGGER_DEBUG("Example Debug")
    LOGGER_WARNING("Example Warning")

    return 0;
}