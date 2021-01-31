#ifndef SIMVIEWEREXPORT_H
#define SIMVIEWEREXPORT_H

#include <QtCore/qglobal.h>

#if defined(SIMVIEWER_LIBRARY)
#  define SIMVIEWER_EXPORT Q_DECL_EXPORT
#else
#  define SIMVIEWER_EXPORT Q_DECL_IMPORT
#endif


#endif // SIMVIEWEREXPORT_H
