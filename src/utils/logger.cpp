#define DEFAULT_LOGGER_NAME "log_manager"

#include <string>
#include <iostream>
#include "logger.h"
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"
#include "spdlog/sinks/rotating_file_sink.h"

Logger::Logger(){
    auto console_sink = std::make_shared<spdlog::sinks::stdout_color_sink_mt>();
    console_sink->set_pattern("%Y-%m-%d %H:%M:%S [thread %t] %^%-7l%$ -- %g:%# - %v");

    std::string base_filename = "log";
    std::string filename_pattern = "logs/" + base_filename + ".txt";
    size_t max_file_size = 1024 * 1024 * 5;
    int max_files = 3;

    auto file_sink = std::make_shared<spdlog::sinks::rotating_file_sink_mt>(filename_pattern, max_file_size, max_files);
    file_sink->set_pattern("%Y-%m-%d %H:%M:%S [thread %t] %^%-7l%$ -- %g:%# - %v");

    std::vector<spdlog::sink_ptr> sinks{ console_sink, file_sink };
    auto logger = std::make_shared<spdlog::logger>(DEFAULT_LOGGER_NAME, sinks.begin(), sinks.end());
    logger->set_level(spdlog::level::trace);
    spdlog::flush_on(spdlog::level::trace);
    spdlog::register_logger(logger);
    spdlog::set_default_logger(logger);
}