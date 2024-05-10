#define DEFAULT_LOGGER_NAME "log_manager"
#include "spdlog/spdlog.h"

#ifndef LOGGER_CONFIG
#define LOGGER_DEBUG(...)   if(spdlog::get(DEFAULT_LOGGER_NAME) != nullptr) {SPDLOG_LOGGER_CALL(spdlog::get(DEFAULT_LOGGER_NAME), spdlog::level::debug, __VA_ARGS__);}
#define LOGGER_INFO(...)   if(spdlog::get(DEFAULT_LOGGER_NAME) != nullptr) {SPDLOG_LOGGER_CALL(spdlog::get(DEFAULT_LOGGER_NAME), spdlog::level::info, __VA_ARGS__);}
#define LOGGER_WARNING(...)   if(spdlog::get(DEFAULT_LOGGER_NAME) != nullptr) {SPDLOG_LOGGER_CALL(spdlog::get(DEFAULT_LOGGER_NAME), spdlog::level::warn, __VA_ARGS__);}
#define LOGGER_ERROR(...)   if(spdlog::get(DEFAULT_LOGGER_NAME) != nullptr) {SPDLOG_LOGGER_CALL(spdlog::get(DEFAULT_LOGGER_NAME), spdlog::level::err, __VA_ARGS__);}
#else
#define LOGGER_DEBUG(...)   (void)0
#define LOGGER_INFO(...)   (void)0
#define LOGGER_WARNING(...)   (void)0
#define LOGGER_ERROR(...)   (void)0
#endif