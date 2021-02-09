#include "simevent.h"

QEvent::Type SimEvent::m_eventType = QEvent::None;

SimEvent::SimEvent(const QObject &_ptr):
    QEvent(SimEvent::type()),
    ptr(&_ptr)
{

}

QEvent::Type SimEvent::type()
{
    if (m_eventType == QEvent::None)
    {
        int generatedType = QEvent::registerEventType();
        m_eventType = static_cast<QEvent::Type>(generatedType);
    }

    return m_eventType;
}

