/***************************************************************************
 *   Copyright (C) 2016 by santiago González                               *
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

#include "flipflopd.h"
#include "pin.h"


Component* FlipFlopD::construct( Circuit* parent, QString type, QString id )
{
        return new FlipFlopD( parent, type, id );
}

LibraryItem* FlipFlopD::libraryItem()
{
    return new LibraryItem(
        tr( "FlipFlop D" ),
        tr( "Logic/Memory" ),
        "2to2.png",
        "FlipFlopD",
        FlipFlopD::construct );
}

FlipFlopD::FlipFlopD( Circuit* parent, QString type, QString id )
         : LogicComponent( parent, type, id )
         , eFlipFlopD(  parent->getSimulatorPtr(), id.toStdString() )
{
    m_width  = 4;
    m_height = 4;
    
    QStringList pinList;

    pinList // Inputs:
            << "IL01 D"
            << "IU02S"
            << "ID02R"
            << "IL03>"
            
            // Outputs:
            << "OR01Q "
            << "OR03!Q "
            ;
    init( pinList );
    
    eLogicDevice::createInput( m_inPin[0] );                  // Input D
    eLogicDevice::createInput( m_inPin[1] );                  // Input S
    eLogicDevice::createInput( m_inPin[2] );                  // Input R
    
    eLogicDevice::createClockPin( m_inPin[3] );           // Input Clock
    
    eLogicDevice::createOutput( m_outPin[0] );               // Output Q
    eLogicDevice::createOutput( m_outPin[1] );               // Output Q'

    eFlipFlopD::setSrInv( m_circ_ptr, true );                           // Inver Set & Reset pins
    setClockInv( false );                       //Don't Invert Clock pin

}
FlipFlopD::~FlipFlopD(){}


#include "moc_flipflopd.cpp"
