#include "guimanager.h"

GUImanager::GUImanager(QObject *parent) : QObject(parent)
{

}
pointers GUImanager::createMainWindow()
{
    MainWindow window;
    window.show();
    pointers ptrs(&window, window.getCircPtr()->getCircPtr(), window.getCircPtr()->getCircPtr()->getSimulatorPtr(), window.getCircPtr());
    m_main.append(window);
    m_pointers.append(ptrs);

    return ptrs;
}
