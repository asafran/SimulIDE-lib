 ###########################################################################
 #   Copyright (C) 2012   by santiago González                             #
 #   santigoro@gmail.com                                                   #
 #                                                                         #
 #   This program is free software; you can redistribute it and/or modify  #
 #   it under the terms of the GNU General Public License as published by  #
 #   the Free Software Foundation; either version 3 of the License, or     #
 #   (at your option) any later version.                                   #
 #                                                                         #
 #   This program is distributed in the hope that it will be useful,       #
 #   but WITHOUT ANY WARRANTY; without even the implied warranty of        #
 #   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         #
 #   GNU General Public License for more details.                          #
 #                                                                         #
 #   You should have received a copy of the GNU General Public License     #
 #   along with this program; if not, see <http://www.gnu.org/licenses/>.  #
 #                                                                         #
 ###########################################################################
 

win32 {
    VERSION     = "0.3.12.18"
}
unix {
    VERSION     = "0.3.12-SR8"
}

TEMPLATE = lib

QT += svg
QT += xml
QT += widgets
QT += concurrent

SOURCES += $$files($$BUILD_DIR/../src/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/active/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/logic/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/mcu/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/meters/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/other/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/outputs/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/passive/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/sources/*.cpp) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/switches/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/elements/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/elements/active/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/elements/logic/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/elements/outputs/*.cpp) \
    $$files($$BUILD_DIR/../src/simulator/elements/passive/*.cpp)

HEADERS += $$files($$BUILD_DIR/../src/*.h) \
    $$files($$BUILD_DIR/../src/gui/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/active/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/logic/*
    sr.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/mcu/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/meters/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/other/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/outputs/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/passive/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/sources/*.h) \
    $$files($$BUILD_DIR/../src/gui/circuitwidget/components/switches/*.h) \
    $$files($$BUILD_DIR/../src/simulator/*.h) \
    $$files($$BUILD_DIR/../src/simulator/elements/*.h) \
    $$files($$BUILD_DIR/../src/simulator/elements/active/*.h) \
    $$files($$BUILD_DIR/../src/simulator/elements/logic/*.h) \
    $$files($$BUILD_DIR/../src/simulator/elements/outputs/*.h) \
    $$files($$BUILD_DIR/../src/simulator/elements/passive/*.h) \
    $$files(../resources/data/*.xml)

INCLUDEPATH += $$BUILD_DIR/../src \
    $$BUILD_DIR/../src/gui \
    $$BUILD_DIR/../src/gui/circuitwidget \
    $$BUILD_DIR/../src/gui/circuitwidget/components \
    $$BUILD_DIR/../src/gui/circuitwidget/components/active \
    $$BUILD_DIR/../src/gui/circuitwidget/components/logic \
    $$BUILD_DIR/../src/gui/circuitwidget/components/mcu \
    $$BUILD_DIR/../src/gui/circuitwidget/components/meters \
    $$BUILD_DIR/../src/gui/circuitwidget/components/other \
    $$BUILD_DIR/../src/gui/circuitwidget/components/outputs \
    $$BUILD_DIR/../src/gui/circuitwidget/components/passive \
    $$BUILD_DIR/../src/gui/circuitwidget/components/sources \
    $$BUILD_DIR/../src/gui/circuitwidget/components/switches \
    $$BUILD_DIR/../src/simulator \
    $$BUILD_DIR/../src/simulator/elements \
    $$BUILD_DIR/../src/simulator/elements/active \
    $$BUILD_DIR/../src/simulator/elements/logic \
    $$BUILD_DIR/../src/simulator/elements/outputs \
    $$BUILD_DIR/../src/simulator/elements/passive

TRANSLATIONS +=  \
    ../resources/translations/simulide.ts \
    ../resources/translations/simulide_en.ts \
    ../resources/translations/simulide_es.ts \
    ../resources/translations/simulide_ru.ts 

RESOURCES = $$BUILD_DIR/../src/application.qrc

QMAKE_CXXFLAGS += -Wno-unused-parameter
QMAKE_CXXFLAGS += -Wno-missing-field-initializers
QMAKE_CXXFLAGS += -Wno-implicit-fallthrough
QMAKE_CXXFLAGS -= -fPIC
QMAKE_CXXFLAGS += -fno-pic

QMAKE_CFLAGS += --std=gnu11
QMAKE_CFLAGS += -Wno-unused-result
QMAKE_CFLAGS += -Wno-unused-parameter
QMAKE_CFLAGS += -Wno-missing-field-initializers
QMAKE_CFLAGS += -Wno-implicit-function-declaration
QMAKE_CFLAGS += -Wno-implicit-fallthrough
QMAKE_CFLAGS += -Wno-int-conversion
QMAKE_CFLAGS += -Wno-sign-compare
QMAKE_CFLAGS += -O2
QMAKE_CFLAGS += -O2
QMAKE_CFLAGS -= -fPIC
QMAKE_CFLAGS += -fno-pic


win32 {
    LIBS +=  ../resources/bin/libglibc_win.a
    RC_ICONS += $$BUILD_DIR/../src/icons/simulide.ico
}
unix {
    QMAKE_LFLAGS += -no-pie
}

CONFIG += qt 
CONFIG += warn_on
CONFIG += no_qml_debug
CONFIG *= c++11

DEFINES += SIMVIEWER_LIBRARY
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

TARGET_NAME = SimulIDE_$$VERSION$$

CONFIG( release, debug|release ) {
        TARGET_PREFIX = $$BUILD_DIR/release/$$TARGET_NAME
        _OBJECTS_DIR  = $$OUT_PWD/build/release
}

CONFIG( debug, debug|release ) {
        TARGET_PREFIX = $$BUILD_DIR/debug/$$TARGET_NAME
        _OBJECTS_DIR  = $$OUT_PWD/build/debug
}

OBJECTS_DIR *= $$_OBJECTS_DIR
MOC_DIR     *= $$_OBJECTS_DIR
INCLUDEPATH += $$OBJECTS_DIR

DESTDIR = $$TARGET_PREFIX/bin

TARGET = $$qtLibraryTarget(SimViewer)

mkpath( $$TARGET_PREFIX/bin )


runLrelease.commands = lrelease ../resources/translations/*.ts; 
#QMAKE_EXTRA_TARGETS += runLrelease
#POST_TARGETDEPS     += runLrelease

copy2dest.commands = \
$(MKDIR)    $$TARGET_PREFIX/share/simulide/data ; \
$(MKDIR)    $$TARGET_PREFIX/share/simulide/examples ; \
$(MKDIR)    $$TARGET_PREFIX/share/simulide/translations ; \
$(COPY_DIR) ../resources/data              $$TARGET_PREFIX/share/simulide ; \
$(COPY_DIR) ../resources/examples          $$TARGET_PREFIX/share/simulide ; \
$(COPY_DIR) ../resources/icons             $$TARGET_PREFIX/share ; \
$(MOVE)     ../resources/translations/*.qm $$TARGET_PREFIX/share/simulide/translations ;

#QMAKE_EXTRA_TARGETS += copy2dest
#POST_TARGETDEPS     += copy2dest


message( "-----------------------------" )
message( "    " $$TARGET_NAME )
message( "    TARGET_PREFIX=" $$TARGET_PREFIX\bin )
message( "-----------------------------" )

