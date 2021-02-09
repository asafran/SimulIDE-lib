#ifndef GUIMANAGER_H
#define GUIMANAGER_H

#include "mainwindow.h"
#include "circuitwidget.h"
#include "circuit.h"

#include <QObject>
struct pointers
{
    pointers(MainWindow *mainw_ptr, Circuit *circuit_ptr, Simulator *simulator_ptr, CircuitWidget *widget_ptr)
    {
        mainwindow.fetchAndStoreOrdered(mainw_ptr);
        circ.fetchAndStoreOrdered(circuit_ptr);
        simulator.fetchAndStoreOrdered(simulator_ptr);
        circuitwidget.fetchAndStoreOrdered(widget_ptr);
    }
    QAtomicPointer<MainWindow> mainwindow;
    QAtomicPointer<Circuit> circ;
    QAtomicPointer<Simulator> simulator;
    QAtomicPointer<CircuitWidget> circuitwidget;
};

class GUImanager : public QObject
{
    Q_OBJECT
public:
    explicit GUImanager(QObject *parent = nullptr);

    pointers createMainWindow();

private:
    QList<pointers> m_pointers;
    QList<MainWindow> m_main;


signals:

};

#endif // GUIMANAGER_H
