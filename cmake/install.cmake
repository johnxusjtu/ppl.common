file(GLOB PPLCOMMON_HEADERS
    src/ppl/common/*.h)
install(FILES ${PPLCOMMON_HEADERS}
    DESTINATION include/ppl/common)

file(GLOB PPLCOMMON_PARAM_HEADERS
    src/ppl/common/params/*.h)
install(FILES ${PPLCOMMON_PARAM_HEADERS}
    DESTINATION include/ppl/common/params)

install(TARGETS pplcommon_static DESTINATION lib)

configure_file(cmake/pplcommon-config.cmake.in
    ${CMAKE_INSTALL_PREFIX}/lib/cmake/ppl/pplcommon-config.cmake
    @ONLY)
