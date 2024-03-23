cmake_minimum_required(VERSION 3.16)

project(appTrailNext VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 23)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick LinguistTools)

qt_standard_project_setup(REQUIRES 6.5)

add_executable(appTrailNext
        main.cpp
)

qt_add_qml_module(appTrailNext
        URI TrailNext
        VERSION 1.0
        QML_FILES Main.qml
)

target_link_libraries(appTrailNext
        PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appTrailNext
        BUNDLE DESTINATION .
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_add_translations(appTrailNext TS_FILES ./translate/TrailNext_zh_CN.ts)

add_subdirectory(FluentUI)
add_subdirectory(util)
