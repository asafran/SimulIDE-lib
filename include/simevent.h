#ifndef SIMEVENT_H
#define SIMEVENT_H

#include <QEvent>

class SimEvent : public QEvent
{
public:
    SimEvent(const QObject &_ptr);

    static QEvent::Type type();

    const QObject &getObject() const;

private:

    const QObject *ptr;

    static QEvent::Type m_eventType;
};

#endif // SIMEVENT_H
