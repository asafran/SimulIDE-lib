 file(GLOB SOURCES
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
    src/*.h
    src/gui/*.h
    src/gui/circuitwidget/*.h
    src/gui/circuitwidget/components/*.h
    src/gui/circuitwidget/components/active/*.h
    src/gui/circuitwidget/components/logic/*.h
    src/gui/circuitwidget/components/mcu/*.h
    src/gui/circuitwidget/components/meters/*.h
    src/gui/circuitwidget/components/other/*.h
    src/gui/circuitwidget/components/outputs/*.h
    src/gui/circuitwidget/components/passive/*.h
    src/gui/circuitwidget/components/sources/*.h
    src/gui/circuitwidget/components/switches/*.h
    src/simulator/*.h
    src/simulator/elements/*.h
    src/simulator/elements/active/*.h
    src/simulator/elements/logic/*.h
    src/simulator/elements/outputs/*.h
    src/simulator/elements/passive/*.h
    src/application.qrc
)

add_library(simulide SHARED ${SOURCES})

target_include_directories(simulide PUBLIC src
    src/gui
    src/gui/circuitwidget
    src/gui/circuitwidget/components
    src/gui/circuitwidget/components/active
    src/gui/circuitwidget/components/logic
    src/gui/circuitwidget/components/mcu
    src/gui/circuitwidget/components/meters
    src/gui/circuitwidget/components/other
    src/gui/circuitwidget/components/outputs
    src/gui/circuitwidget/components/passive
    src/gui/circuitwidget/components/sources
    src/gui/circuitwidget/components/switches
    src/simulator
    src/simulator/elements
    src/simulator/elements/active
    src/simulator/elements/logic
    src/simulator/elements/outputs
    src/simulator/elements/passive
    )

set_target_properties( simulide
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/build"
    PREFIX "lib"
    DEBUG_POSTFIX "_d"
)

target_link_libraries(simulide Qt5::Core Qt5::Xml Qt5::Widgets Qt5::Concurrent Qt5::Svg)
