/***************************************************************************
 *   Copyright (C) 2012 by santiago González                               *
 *   santigoro@gmail.com                                                   *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.  *
 *                                                                         *
 ***************************************************************************/

#ifndef MAINCWINDOW_H
#define MAINCWINDOW_H

#include <QtWidgets>
#include "simviewer-export.h"


class CircuitWidget;

class SIMVIEWER_EXPORT MainCircWindow : public QMainWindow
{
    Q_OBJECT

    public:
        MainCircWindow();
        ~MainCircWindow();

// static MainWindow* self() { return m_pSelf; }

        CircuitWidget* getCircPtr() { return m_circuit;}
//        void loadPlugins();

//        void unLoadPugin( QString pluginName );
        
        //void readSettings();
        
        void loadXMLS(QDir dir);

        void setTitle( QString title );
        
        //double fontScale() { return m_fontScale; }
        //void setFontScale( double scale ) { m_fontScale = scale; }

        //int autoBck();
        //void setAutoBck( int secs );


    protected:
        void closeEvent(QCloseEvent* event);

    private slots:
        void about();

    private:

// static MainWindow* m_pSelf;
 
        void loadPluginsAt( QDir pluginsDir );

        //void createWidgets();
        //void createMenus();
        //void createToolBars();
        //void writeSettings();
        void applyStile();
        
        //float m_fontScale;
        
//        QSettings m_settings;
        
        QString m_version;
        QString m_styleSheet;
        QString m_circHelp;

        QHash<QString, QPluginLoader*>  m_plugins;
        
        CircuitWidget*      m_circuit;

};

#endif
