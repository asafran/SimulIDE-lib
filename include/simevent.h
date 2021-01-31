#ifndef SIMEVENT_H
#define SIMEVENT_H

#include <QEvent>

class SimEvent : public QEvent
{
public:
    SimEvent(const bool &_data, const QObject *_ptr);

    static QEvent::Type type();

    const bool &getTransferedBool() const;
    const QObject &getObject() const;

private:
    const bool data;

    const QObject *ptr;

    static QEvent::Type m_eventType;
};

#endif // SIMEVENT_H
