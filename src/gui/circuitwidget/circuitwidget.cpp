/***************************************************************************
 *   Copyright (C) 2010 by santiago González                               *
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
 
#include "circuitwidget.h"
#include "mainwindow.h"
#include "circuit.h"

//CircuitWidget*  CircuitWidget::m_pSelf = 0l;

CircuitWidget::CircuitWidget( MainWindow *parent  )
             : QWidget( parent )
             , m_verticalLayout(this)
             , m_circView(this, parent)
             , m_circToolBar(this)
             , m_infoMenu(this)
{
//    m_pSelf = this;

    m_verticalLayout.setObjectName( "verticalLayout" );
    m_verticalLayout.setContentsMargins(0, 0, 0, 0);
    m_verticalLayout.setSpacing(0);

    m_verticalLayout.addWidget( &m_circToolBar );
    m_verticalLayout.addWidget( &m_circView );
    
    //m_verticalLayout.addLayout( &m_horizontLayout );
    //m_horizontLayout.addWidget( &m_plotter );
    //m_horizontLayout.addWidget( &m_terminal );
    //m_horizontLayout.addWidget( &m_serial);
    
    //connect( this,      &CircuitWidget::dataAvailable,
    //         &m_serial, &SerialPortWidget::slotWriteData );
    
    m_rateLabel = new QLabel( this );
    QFont font( "Arial", 10, QFont::Normal );
    double fontScale = parent->fontScale();
    font.setPixelSize( int(10*fontScale) );
    m_rateLabel->setFont( font );
    
    createActions();
    createToolBars();
    
    QString appPath = QCoreApplication::applicationDirPath();
    
    //m_lastCircDir = MainWindow::self()->settings()->value("lastCircDir").toByteArray();
    //if( m_lastCircDir.isEmpty() )  m_lastCircDir = appPath + "..share/simulide/examples";
    
    //newCircuit();
    setRate(0);
}
CircuitWidget::~CircuitWidget() { }

void CircuitWidget::clear()
{
    m_circView.clear();
    m_circView.setCircTime( 0 );
}

void CircuitWidget::createActions()
{
    aboutAct = new QAction( QIcon(":/about.png"),tr("About SimulIDE"), this);
    aboutAct->setStatusTip(tr("About SimulIDE"));
    connect( aboutAct, SIGNAL( triggered()), this, SLOT(about()));
    
    aboutQtAct = new QAction( QIcon(":/about.png"),tr("About Qt"), this);
    aboutQtAct->setStatusTip(tr("About Qt"));
    connect( aboutQtAct, SIGNAL(triggered()), qApp, SLOT(aboutQt()) );
}

void CircuitWidget::createToolBars()
{
    /*
    m_circToolBar.setObjectName( "m_circToolBar" );
    m_circToolBar.addAction(newCircAct);
    m_circToolBar.addAction(openCircAct);
    m_circToolBar.addAction(saveCircAct);
    m_circToolBar.addAction(saveCircAsAct);
    m_circToolBar.addSeparator();//..........................
    m_circToolBar.addAction(powerCircAct);
    m_circToolBar.addSeparator();//..........................
    */
    m_circToolBar.addWidget( m_rateLabel );

    QWidget *spacerWidget = new QWidget(this);
    spacerWidget->setSizePolicy(QSizePolicy::Expanding, QSizePolicy::Preferred);
    spacerWidget->setVisible(true);
    m_circToolBar.addWidget(spacerWidget);

    m_infoMenu.addAction( aboutAct );
    m_infoMenu.addAction( aboutQtAct );
    
    QToolButton* toolButton = new QToolButton( this );
    toolButton->setStatusTip( tr("Info") );
    toolButton->setMenu( &m_infoMenu );
    toolButton->setIcon( QIcon(":/help.png") );
    toolButton->setPopupMode( QToolButton::InstantPopup );
    m_circToolBar.addWidget( toolButton );
    
    m_circToolBar.addSeparator();//..........................
}

/*
void CircuitWidget::openCirc()
{
    const QString dir = m_lastCircDir;
    QString fileName = QFileDialog::getOpenFileName( 0l, tr("Load Circuit"), dir,
                                          tr("Circuits (*.simu);;All files (*.*)"));

    loadCirc( fileName );
}
*/
void CircuitWidget::loadCirc( QString path )
{
    if( !path.isEmpty() && path.endsWith(".simu") )
    {
        //newCircuit();
        m_circView.getCircPtr()->loadCircuit( path );
   
        m_curCirc = path;
        //m_lastCircDir = path;
        m_main_ptr->setTitle(path.split("/").last());
        //MainWindow::self()->settings()->setValue( "lastCircDir", m_lastCircDir );
        //FileBrowser::self()->setPath(m_lastCircDir);
        m_circView.setCircTime( 0 );
    }
}


void CircuitWidget::openInfo()
{
    QDesktopServices::openUrl(QUrl("http://simulide.blogspot.com"));
}

void CircuitWidget::about()
{
    QString t ="&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
    QMessageBox::about( this, tr("About SimulIDE Viewer library"),
    "<b>SimulIDE web site:</b> <a href=\"https://simulide.blogspot.com/\"> https://simulide.blogspot.com/ </a><br><br>"
    "<b>SimulIDE project:</b> <a href=\"https://sourceforge.net/projects/simulide/\"> https://sourceforge.net/projects/simulide/ </a><br><br>"
    "<b>Library:</b> <a href=\"https://github.com/asafran\"> https://github.com/asafran/ </a><br><br>"
    "<b>Become a SimulIDE Patron:</b> <a href=\"https://www.patreon.com/simulide\"> https://www.patreon.com/simulide </a><br><br>"
    "<br><br>"
               "<b>Creator:</b> Santiago Gonzalez, Andrei Safranovich (library)<br>"
               "<br>"
               "<b>Developers:</b> <br>"
               +t+"Santiago Gonzalez. <br>"
               +t+"Popov Alexey <br>"
               +t+"Pavel Lamonov <br>"
               +t+"Andrei Safranovich (library) <br>"
               "<br>"
               "<b>Contributors:</b> <br>"
               +t+"Chris Roper <br>"
               +t+"Sergei Chiyanov <br>"
               +t+"Sergey Roenko <br>"
               +t+"Gabor Nagy <br>"
               "<br>"
               "<b>Translations:</b> <br>"
               +t+"Spanish: Santiago Gonzalez. <br>"
               +t+"Russian: Ronomir <br>"
               );
}

void CircuitWidget::setRate( int rate )
{
    if( rate < 0 ) m_rateLabel->setText( tr("Circuit ERROR!!!") );
    else 
        m_rateLabel->setText( tr("    Real Speed: ")+QString::number(rate) +" %" );
}

/*void CircuitWidget::setSerialPortWidget( QWidget* serialPortWidget )
{
    m_serialPortWidget = serialPortWidget;
    m_horizontLayout.addWidget( m_serialPortWidget );
}*/



#include "moc_circuitwidget.cpp"
