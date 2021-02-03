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
QT += script
QT += widgets
QT += concurrent
QT += serialport
QT += multimedia widgets

SOURCES += $$files(F:/VieverBuilds/NewViewer/src/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/active/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/logic/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/mcu/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/meters/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/other/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/outputs/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/passive/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/sources/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/switches/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/oscopewidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/plotterwidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/terminalwidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/QPropertyEditor/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/componentselector/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/filebrowser/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/editorwidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/editorwidget/findreplacedialog/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/serialporwidget/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/active/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/logic/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/outputs/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/passive/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/processors/*.cpp) \
    $$files(F:/VieverBuilds/NewViewer/src/simavr/sim/*.c) \
    $$files(F:/VieverBuilds/NewViewer/src/simavr/cores/*.c) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/*.cc) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/devices/*.cc) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/modules/*.cc) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/registers/*.cc)

HEADERS += $$files(F:/VieverBuilds/NewViewer/src/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/active/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/logic/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/mcu/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/meters/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/other/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/outputs/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/passive/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/sources/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/switches/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/oscopewidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/plotterwidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/terminalwidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/QPropertyEditor/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/componentselector/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/filebrowser/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/editorwidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/editorwidget/findreplacedialog/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gui/serialporwidget/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/active/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/logic/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/outputs/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/passive/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simulator/elements/processors/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simavr/sim/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/simavr/sim/avr/*.h)  \
    $$files(F:/VieverBuilds/NewViewer/src/simavr/cores/*.h) \
    $$files(F:/VieverBuilds/NewViewer/resources/data/*.xml) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/devices/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/modules/*.h) \
    $$files(F:/VieverBuilds/NewViewer/src/gpsim/registers/*.h)

INCLUDEPATH += F:/VieverBuilds/NewViewer/src \
    F:/VieverBuilds/NewViewer/src/gui \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/active \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/logic \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/mcu \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/meters \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/other \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/outputs \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/passive \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/sources \
    F:/VieverBuilds/NewViewer/src/gui/circuitwidget/components/switches \
    F:/VieverBuilds/NewViewer/src/gui/oscopewidget \
    F:/VieverBuilds/NewViewer/src/gui/plotterwidget \
    F:/VieverBuilds/NewViewer/src/gui/terminalwidget \
    F:/VieverBuilds/NewViewer/src/gui/QPropertyEditor \
    F:/VieverBuilds/NewViewer/src/gui/componentselector \
    F:/VieverBuilds/NewViewer/src/gui/filebrowser \
    F:/VieverBuilds/NewViewer/src/gui/editorwidget \
    F:/VieverBuilds/NewViewer/src/gui/editorwidget/findreplacedialog \
    F:/VieverBuilds/NewViewer/src/gui/serialporwidget \
    F:/VieverBuilds/NewViewer/src/simulator \
    F:/VieverBuilds/NewViewer/src/simulator/elements \
    F:/VieverBuilds/NewViewer/src/simulator/elements/active \
    F:/VieverBuilds/NewViewer/src/simulator/elements/logic \
    F:/VieverBuilds/NewViewer/src/simulator/elements/outputs \
    F:/VieverBuilds/NewViewer/src/simulator/elements/passive \
    F:/VieverBuilds/NewViewer/src/simulator/elements/processors \
    F:/VieverBuilds/NewViewer/src/simavr \
    F:/VieverBuilds/NewViewer/src/simavr/sim \
    F:/VieverBuilds/NewViewer/src/simavr/sim/avr \
    F:/VieverBuilds/NewViewer/src/simavr/cores \
    F:/VieverBuilds/NewViewer/src/gpsim \
    F:/VieverBuilds/NewViewer/src/gpsim/devices \
    F:/VieverBuilds/NewViewer/src/gpsim/modules \
    F:/VieverBuilds/NewViewer/src/gpsim/registers

TRANSLATIONS +=  \
    ../resources/translations/simulide.ts \
    ../resources/translations/simulide_en.ts \
    ../resources/translations/simulide_es.ts \
    ../resources/translations/simulide_ru.ts 

RESOURCES = F:/VieverBuilds/NewViewer/src/application.qrc

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
    RC_ICONS += ../src/icons/simulide.ico
}
unix {
    QMAKE_LIBS += -lelf
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

