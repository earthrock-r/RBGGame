//
//  ClassList.swift
//  RBG
//
//  Created by Ranjith R Dixit on 18/08/17.
//  Copyright © 2017 Blueware S. All rights reserved.
//

import Foundation
import UIKit

class col {
    enum mycol {
        case blue
        case red
        case white
    }
    var TBScol = UIColor()
    var MyColSwitch = mycol.blue
    func switchstate(){
        switch MyColSwitch {
        case .blue:
            TBScol = UIColor.blue
        case .red:
            TBScol = UIColor.red
        case .white:
            TBScol = UIColor.white
        default:
            TBScol = UIColor.white
        }
    }
    init(MyColSwitch: mycol) {
        self.MyColSwitch = (MyColSwitch)
    }
}
class cell {
    var mycolo = col(MyColSwitch: .white)
    var cbutton = UIButton()
    var cellColour = UIColor()
    var units: Int = 10
    var id = Int()
    var maxunits = Int()
    var TBS = String()
    enum celltype {
        case core
        case normal
        case cencore
        case cennormal
    }
    enum ownere {
        case playerblue
        case playerred
    }
    var owner = ownere.playerblue
    enum cellarraye {
        case a
        case b
        case c
        case d
        case e
    }
    var cellarray = cellarraye.a
    var celltypev = celltype.normal
    init(id: Int, cbutton: UIButton){
        TBS = String(self.units/10)
        self.id = id
        self.cbutton = cbutton
    }
    func setvs(){
        cellColour = mycolo.TBScol
        switch celltypev {
        case .core:
            maxunits = 8
        case .normal:
            maxunits = 3
        case .cennormal:
            maxunits = 5
        case .cencore:
            maxunits = 999
        default:
            maxunits = 1
        }
        cbutton.backgroundColor = cellColour
    }
}
class player {
    var pcol = col(MyColSwitch: .blue)
    var ptotalunits = Int()
    var cellsOfPlayer = [cell]()
    var ptag = String()
    var checkTurn = Bool()
    var playerunits = 0
    var totalUnits = 0
    /*init(pcol: col, ptag: String) {
        self.pcol = pcol
        self.ptag = ptag
    }*/
    /*enum time {
        case addingUnits
        case subtractingUnit
        enum movingUnits {
            case buttonone
            case buttontwo
        }
        case normal
    }
    var enumtype = time.normal*/
    
        var normal = false
        var addingUnits = false
        var subtractingUnits = false
        var movingUnitsb = false

}

class board {

    var colblue = col(MyColSwitch: .blue)
    var colred = col(MyColSwitch: .red)
    var colwhite = col(MyColSwitch: .white)
    enum starte {
        case startcase
        case normalcase
    }
    var startb = starte.startcase
}

