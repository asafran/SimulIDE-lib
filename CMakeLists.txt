 file(GLOB SOURCES
    include/*.h
    src/*.cpp 
    src/gui/*.cpp 
    src/gui/circuitwidget/*.cpp 
    src/gui/circuitwidget/components/*.cpp 
    src/gui/circuitwidget/components/active/*.cpp 
    src/gui/circuitwidget/components/logic/*.cpp 
    src/gui/circuitwidget/components/mcu/*.cpp 
    src/gui/circuitwidget/components/meters/*.cpp 
    src/gui/circuitwidget/components/other/*.cpp 
    src/gui/circuitwidget/components/outputs/*.cpp 
    src/gui/circuitwidget/components/passive/*.cpp 
    src/gui/circuitwidget/components/sources/*.cpp 
    src/gui/circuitwidget/components/switches/*.cpp 
    src/simulator/*.cpp 
    src/simulator/elements/*.cpp 
    src/simulator/elements/active/*.cpp 
    src/simulator/elements/logic/*.cpp 
    src/simulator/elements/outputs/*.cpp 
    src/simulator/elements/passive/*.cpp
    src/application.qrc
)

add_library(simulide SHARED ${SOURCES})

target_include_directories(simulide PUBLIC include)

set_target_properties( simulide
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    PREFIX "lib"
    DEBUG_POSTFIX "_d"
)

target_link_libraries(simulide Qt6::Core Qt6::Xml Qt6::Widgets Qt6::Concurrent)
