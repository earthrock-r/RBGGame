//
//  BoardViewController.swift
//  RBG
//
//  Created by Ranjith R Dixit on 20/08/17.
//  Copyright © 2017 Blueware S. All rights reserved.
//

import UIKit
import AVFoundation

class BoardViewController: UIViewController {
	
	//MARK: Outlets
	/*
	//@IBOutlet weak var turnLabel: UILabel!//
	@IBOutlet weak var endturn: UIButton!
	@IBOutlet weak var turnLabel: UILabel!
	//@IBOutlet weak var endturn: UIButton!//
	
	@IBOutlet weak var movingunitsbuttons: UIButton!
	@IBOutlet weak var attackbutton: UIButton!
	//@IBOutlet weak var attackbutton: UIButton!//
	@IBOutlet weak var addingunitsbutton: UIButton!
	*/
	@IBOutlet var turnLabel: UILabel!
	@IBOutlet var endturn: UIButton!
	
	@IBOutlet var movingunitsbutton: UIButton!
	@IBOutlet var attackbutton: UIButton!
	@IBOutlet var addingunitsbutton: UIButton!
	
	/*
	//@IBOutlet weak var A1: UIButton!//
	@IBOutlet weak var A1: UIButton!
	@IBOutlet weak var A2: UIButton!
	@IBOutlet weak var A3: UIButton!
	@IBOutlet weak var A4: UIButton!
	@IBOutlet weak var A5: UIButton!
	@IBOutlet weak var A6: UIButton!
	@IBOutlet weak var A7: UIButton!
	@IBOutlet weak var A8: UIButton!
	@IBOutlet weak var A0: UIButton!
	
	@IBOutlet weak var B1: UIButton!
	@IBOutlet weak var B2: UIButton!
	@IBOutlet weak var B3: UIButton!
	//@IBOutlet weak var B4: UIButton!//
	@IBOutlet weak var B4: UIButton!
	@IBOutlet weak var B5: UIButton!
	@IBOutlet weak var B6: UIButton!
	@IBOutlet weak var B7: UIButton!
	@IBOutlet weak var B8: UIButton!
	@IBOutlet weak var B0: UIButton!
	
	@IBOutlet weak var C1: UIButton!
	@IBOutlet weak var C2: UIButton!
	@IBOutlet weak var C3: UIButton!
	@IBOutlet weak var C4: UIButton!
	@IBOutlet weak var C5: UIButton!
	@IBOutlet weak var C6: UIButton!
	@IBOutlet weak var C7: UIButton!
	@IBOutlet weak var C8: UIButton!
	@IBOutlet weak var C0: UIButton!
	
	@IBOutlet weak var D1: UIButton!
	@IBOutlet weak var D2: UIButton!
	@IBOutlet weak var D3: UIButton!
	@IBOutlet weak var D4: UIButton!
	@IBOutlet weak var D5: UIButton!
	@IBOutlet weak var D6: UIButton!
	@IBOutlet weak var D7: UIButton!
	@IBOutlet weak var D8: UIButton!
	@IBOutlet weak var D0: UIButton!
	
	@IBOutlet weak var E1: UIButton!
	@IBOutlet weak var E2: UIButton!
	@IBOutlet weak var E3: UIButton!
	@IBOutlet weak var E4: UIButton!
	@IBOutlet weak var E5: UIButton!
	@IBOutlet weak var E6: UIButton!
	@IBOutlet weak var E7: UIButton!
	@IBOutlet weak var E8: UIButton!
	@IBOutlet weak var E9: UIButton!
	@IBOutlet weak var E10: UIButton!
	@IBOutlet weak var EB: UIButton!
	@IBOutlet weak var ER: UIButton!
	//END: Outlets*/
	
	@IBOutlet var A1: UIButton!
	@IBOutlet var A2: UIButton!
	@IBOutlet var A3: UIButton!
	@IBOutlet var A4: UIButton!
	@IBOutlet var A5: UIButton!
	@IBOutlet var A6: UIButton!
	@IBOutlet var A7: UIButton!
	@IBOutlet var A8: UIButton!
	@IBOutlet var A0: UIButton!
	
	@IBOutlet var B1: UIButton!
	@IBOutlet var B2: UIButton!
	@IBOutlet var B3: UIButton!
	@IBOutlet var B4: UIButton!
	@IBOutlet var B5: UIButton!
	@IBOutlet var B6: UIButton!
	@IBOutlet var B7: UIButton!
	@IBOutlet var B8: UIButton!
	@IBOutlet var B0: UIButton!
	
	@IBOutlet var C1: UIButton!
	@IBOutlet var C2: UIButton!
	@IBOutlet var C3: UIButton!
	@IBOutlet var C4: UIButton!
	@IBOutlet var C5: UIButton!
	@IBOutlet var C6: UIButton!
	@IBOutlet var C7: UIButton!
	@IBOutlet var C8: UIButton!
	@IBOutlet var C0: UIButton!
	
	@IBOutlet var D1: UIButton!
	@IBOutlet var D2: UIButton!
	@IBOutlet var D3: UIButton!
	@IBOutlet var D4: UIButton!
	@IBOutlet var D5: UIButton!
	@IBOutlet var D6: UIButton!
	@IBOutlet var D7: UIButton!
	@IBOutlet var D8: UIButton!
	@IBOutlet var D0: UIButton!
	
	@IBOutlet var E1: UIButton!
	@IBOutlet var E2: UIButton!
	@IBOutlet var E3: UIButton!
	@IBOutlet var E4: UIButton!
	@IBOutlet var E5: UIButton!
	@IBOutlet var E6: UIButton!
	@IBOutlet var E7: UIButton!
	@IBOutlet var E8: UIButton!
	@IBOutlet var E9: UIButton!
	@IBOutlet var E10: UIButton!
	@IBOutlet var EB: UIButton!
	@IBOutlet var ER: UIButton!
	
	//MARK: Variables
	var cellSA = [cell]()
	var cellSB = [cell]()
	var cellSC = [cell]()
	var cellSD = [cell]()
	var cellSE = [cell]()
	var buttonarray = [UIButton]()
	var sredcell = [cell]()
	var sbluecell = [cell]()
	var cellarray = [cell]()
	var gameBoard = board()
	var bluecol = col(MyColSwitch: .blue)
	var blue = player()
	var redcol = col(MyColSwitch: .red)
	var red = player()
	var addingunitsforblue = 0
	var addingunitsforred = 0
	enum startenume {
		case onefive
		case twoten
		case threefifteen
	}
	var startenum = startenume.onefive
	var blueplayername = "Blue"
	var redplayername = "Red"
	var playerbluewinno = Int()
	var playerredwinno = Int()
	//END: Variables

	//MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
		//MARK: Audio
		/*
		var audioPlayer = AVAudioPlayer()
		let settvc = SettingsViewController()
		var volumefromsettings = 1.0
		var boolfromsettings = true
		var float = Float()
		if boolfromsettings == true {
			audioPlayer.volume = float
			volumefromsettings = settvc.settingsvolumevalue
			float = Float(volumefromsettings)
			let url = URL(fileURLWithPath: "Music.m4a")
			do {
				audioPlayer = try AVAudioPlayer(contentsOf: url)
				audioPlayer.play()
			} catch {
				// couldn't load file :(
			}
		}*/
		//END: Audio
		//MARK: Cell Assignment
		var C11 = cell(id: 11, cbutton: self.A1)
		var C12 = cell(id: 12, cbutton: self.A2)
		var C13 = cell(id: 13, cbutton: self.A3)
		var C14 = cell(id: 14, cbutton: self.A4)
		var C15 = cell(id: 15, cbutton: self.A5)
		var C16 = cell(id: 16, cbutton: self.A6)
		var C17 = cell(id: 17, cbutton: self.A7)
		var C18 = cell(id: 18, cbutton: self.A8)
		var C10 = cell(id: 10, cbutton: self.A0)
		
		var C21 = cell(id: 21, cbutton: self.B1)
		var C22 = cell(id: 22, cbutton: self.B2)
		var C23 = cell(id: 23, cbutton: self.B3)
		var C24 = cell(id: 24, cbutton: self.B4)
		var C25 = cell(id: 25, cbutton: self.B5)
		var C26 = cell(id: 26, cbutton: self.B6)
		var C27 = cell(id: 27, cbutton: self.B7)
		var C28 = cell(id: 28, cbutton: self.B8)
		var C20 = cell(id: 20, cbutton: self.B0)
		
		var C31 = cell(id: 31, cbutton: self.C1)
		var C32 = cell(id: 32, cbutton: self.C2)
		var C33 = cell(id: 33, cbutton: self.C3)
		var C34 = cell(id: 34, cbutton: self.C4)
		var C35 = cell(id: 35, cbutton: self.C5)
		var C36 = cell(id: 36, cbutton: self.C6)
		var C37 = cell(id: 37, cbutton: self.C7)
		var C38 = cell(id: 38, cbutton: self.C8)
		var C30 = cell(id: 30, cbutton: self.C0)
		
		var C41 = cell(id: 41, cbutton: self.D1)
		var C42 = cell(id: 42, cbutton: self.D2)
		var C43 = cell(id: 43, cbutton: self.D3)
		var C44 = cell(id: 44, cbutton: self.D4)
		var C45 = cell(id: 45, cbutton: self.D5)
		var C46 = cell(id: 46, cbutton: self.D6)
		var C47 = cell(id: 47, cbutton: self.D7)
		var C48 = cell(id: 48, cbutton: self.D8)
		var C40 = cell(id: 40, cbutton: self.D0)
		
		var C51 = cell(id: 51, cbutton: self.E1)
		var C52 = cell(id: 52, cbutton: self.E2)
		var C53 = cell(id: 53, cbutton: self.E3)
		var C54 = cell(id: 54, cbutton: self.E4)
		var C55 = cell(id: 55, cbutton: self.E5)
		var C56 = cell(id: 56, cbutton: self.E6)
		var C57 = cell(id: 57, cbutton: self.E7)
		var C58 = cell(id: 58, cbutton: self.E8)
		var C59 = cell(id: 59, cbutton: self.E9)
		var C510 = cell(id: 510, cbutton: self.E10)
		var C61 = cell(id: 61, cbutton: self.EB)
		var C62 = cell(id: 62, cbutton: self.ER)
		//END: Cell Assignment
		
		if gameBoard.startb == .startcase {
			//MARK: GameBoard Initialisation
			cellSE = [C51, C52, C53, C54, C55, C56, C57, C58, C59, C510, C61, C62]
			cellSA = [C11, C12, C13, C14, C15, C16, C17, C18, C10]
			cellSB = [C21, C22, C23, C24, C25, C26, C27, C28, C20]
			cellSC = [C31, C32, C33, C34, C35, C36, C37, C38, C30]
			cellSD = [C41, C42, C43, C44, C45, C46, C47, C48, C40]
			let	redcentralcells = [C53, C54, C55, C56, C57, C62]
			let bluecentralcells = [C51, C52, C58, C59, C510, C61]
			let corecells = [C61, C62, C10, C20, C30, C40]
			sredcell = cellSB + cellSC + redcentralcells
			sbluecell = cellSA + cellSD + bluecentralcells
			buttonarray = [A1, A2, A3, A4, A5, A6, A7, A8, A0, B1, B2, B3, B4, B5, B6, B7, B8, B0, C1, C2, C3, C4, C5, C6, C7, C8, C0, D1, D2, D3, D4, D5, D6, D7, D8, D0, E1, E2, E3, E4, E5, E6, E7, E8, E9, E10, EB, ER]
			blue.pcol = bluecol
			red.pcol = redcol
			for button in buttonarray {
				cellarray.append(cell(id: 0, cbutton: button))
			}
			for cella in sbluecell {
				cella.owner = .playerblue
				cella.cbutton.backgroundColor = UIColor.blue
				red.totalUnits += (cella.units / 2)
			}
			for cella in sredcell {
				cella.owner = .playerred
				cella.cbutton.backgroundColor = UIColor.red
				blue.totalUnits += (cella.units / 2)
			}
			for cella in cellSA {
				cella.cellarray = .a
			}
			for cella in cellSB {
				cella.cellarray = .b
			}
			for cella in cellSC {
				cella.cellarray = .c
			}
			for cella in cellSD {
				cella.cellarray = .d
			}
			for cella in cellSE {
				cella.cellarray = .e
			}
			for cella in cellarray {
				if cella.cellarray == .e {
					cella.maxunits = 25
					cella.units = 10
				} else {
					cella.maxunits = 5
					cella.units = 1
				}
			}
			for cella in corecells {
				cella.maxunits = 20
				if cella.cellarray == .e {
					cella.maxunits = 1000000000000000000 // 1,000,000,000,000,000,000 = One Quintillion, the Definition of Infinity in this game.
				}
			}
			if startenum == .onefive {
				for cella in corecells {
					cella.units = 5
					if cella.cellarray == .e {
						cella.units = 10
					}
				}
				for cella in cellarray {
					cella.units = 1
				}
				for cella in corecells {
					cella.units = 5
				}
			}
			if startenum == .twoten {
				for cella in corecells {
					cella.units = 10
					if cella.cellarray == .e {
						cella.units = 20
					}
				}
				for cella in cellarray {
					cella.units = 2
				}
				for cella in corecells {
					cella.units = 10
				}
			}
			if startenum == .threefifteen {
				for cella in corecells {
					cella.units = 15
					if cella.cellarray == .e {
						cella.units = 30
					}
				}
				for cella in cellarray {
					cella.units = 3
				}
				for cella in corecells {
					cella.units = 15
				}
			}
			//END: GameBoard Initialisation
		}
		//MARK: Current Player Mechanism
		enum currentplayere {
			case playerred
			case playerblue
		}
		var currentplayer = currentplayere.playerblue
			cellarray = (cellSA + cellSB + cellSC + cellSD + cellSE)
			currentplayer = currentplayere.playerred
			if currentplayer == .playerred && endturn.isTouchInside == true {
				currentplayer = .playerblue
				turnLabel.text = "It is " + blueplayername + "'s turn."
				self.view.backgroundColor = UIColor.blue
			}
			if currentplayer == .playerred && endturn.isTouchInside == false {
				currentplayer = .playerred
				turnLabel.text = "It is " + redplayername + "'s turn."
				self.view.backgroundColor = UIColor.red
			}
		//END: Current Player Mechanism
		//MARK: Winning Mechanism
		for cella in cellarray {
			if cella.owner == .playerred {
				playerredwinno += 1
			}
			if cella.owner == .playerblue {
				playerbluewinno += 1
			}
			if playerredwinno >= 42 {
				let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "RedVViewController")
				self.show(vc as! UIViewController, sender: vc)
			}
			if playerbluewinno >= 42 {
				let vc : AnyObject! = self.storyboard!.instantiateViewController(withIdentifier: "BlueVViewController")
				self.show(vc as! UIViewController, sender: vc)
			}
		}
		//END: Winning Mechanism
		
		//MARK: Cell Display Mechanism
		repeat {
			for cella in cellarray {
				cella.cbutton.setTitle("\(cella.units)", for: UIControlState.normal)
				cella.cbutton.setTitle("\(cella.units)", for: UIControlState.highlighted)
				cella.cbutton.setTitle("\(cella.units)", for: UIControlState.application)
				cella.cbutton.backgroundColor = cella.mycolo.TBScol
				if cella.owner == .playerblue {
					cella.cbutton.backgroundColor = UIColor.blue
				}
				if cella.owner == .playerred {
					cella.cbutton.backgroundColor = UIColor.red
				}
			}
		} while 1 == 1
		//END: Cell Display Mechanism
		
		//MARK: Attack Mechanism
		enum attackbuttone {
			case buttonone
			case buttontwo
		}
		var attackbuttonee = attackbuttone.buttonone
		var abuttonone = UIButton()
		var abuttontwo = UIButton()
		if attackbutton.isTouchInside == true {
			//MARK: Attack Button
			if currentplayer == .playerblue {
				for cella in cellarray {
					if cella.cbutton.isTouchInside == true {
						attackbuttonee = .buttonone
						abuttonone = cella.cbutton
						attackbuttonee = .buttontwo
					}
					if cella.cbutton.isTouchInside == true && attackbuttonee == .buttontwo{
						abuttontwo = cella.cbutton
					}
				}
			}
		}
		func attack(_ cellattacked: cell, _ cellattacking: cell){
			if cellattacking.owner == cellattacked.owner {
				// NO ACTION TAKEN
			}
			if cellattacking.cellarray == .a && cellattacked.cellarray == .c {
				// NO ACTION TAKEN
			}
			if cellattacking.cellarray == .b && cellattacked.cellarray == .d {
				// NO ACTION TAKEN
			}
			if cellattacking.cellarray == .c && cellattacked.cellarray == .a {
				// NO ACTION TAKEN
			}
			if cellattacking.cellarray == .d && cellattacked.cellarray == .b {
				// NO ACTION TAKEN
			} else {
				if cellattacking.units >= cellattacked.units {
					cellattacking.units -= (cellattacked.units + 1)
					cellattacked.units = 1
					cellattacked.cellColour = cellattacking.cellColour
				} else {
					cellattacked.units -= cellattacking.units
				}
				if cellattacking.units == cellattacked.units {
					cellattacking.units = 1
					cellattacked.units = 1
				}
			}
		}

		//END: Attack Mechanism
			
			//MARK: Adding Units Mechanism
		//MARK: Adding Units Button
		if addingunitsbutton.isTouchInside == true {
			if currentplayer == .playerblue {
				blue.addingUnits = true
				red.addingUnits = false
			}
			if currentplayer == .playerred {
				red.addingUnits = true
				blue.addingUnits = false
			}
		}
				if currentplayer == .playerblue && blue.addingUnits == true {
					red.normal = true
					red.addingUnits = false
					red.movingUnitsb = false
					for cella in cellarray {
						if cella.cbutton.isTouchInside == true {
							if ( cella.owner == .playerblue && addingunitsforblue == 6 ) {
							if cella.owner == .playerblue {
								if blue.playerunits == 0 {
									blue.addingUnits = false
									blue.movingUnitsb = true
								} else {
									if cella.units == (cella.maxunits) {
										// NO ACTION TAKEN
									} else {
										if blue.totalUnits % 2 == 0 {
											blue.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										} else {
											blue.totalUnits -= 1
											blue.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										}
									}
								}
							}
							if cella.owner == .playerred {
								if red.playerunits == 0 {
									red.addingUnits = false
									red.movingUnitsb = true
								} else {
									if cella.units == (cella.maxunits) {
									// NO ACTION TAKEN
									} else {
										if red.totalUnits % 2 == 0 {
											red.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										} else {
											red.totalUnits -= 1
											red.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										}
									}
								}
							}
						}
					}
				}
			}
			if currentplayer == .playerred && blue.addingUnits == true {
				blue.normal = true
				blue.addingUnits = false
				blue.movingUnitsb = false
				for cella in cellarray {
					if cella.cbutton.isTouchInside == true {
						if ( cella.owner == .playerblue && addingunitsforblue == 6 ) {
							if cella.owner == .playerblue {
								if blue.playerunits == 0 {
									blue.addingUnits = false
									blue.movingUnitsb = true
								} else {
									if cella.units == (cella.maxunits) {
										// NO ACTION TAKEN
									} else {
										if blue.totalUnits % 2 == 0 {
											blue.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										} else {
											blue.totalUnits -= 1
											blue.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										}
									}
								}
							}
							if cella.owner == .playerred {
								if red.playerunits == 0 {
									red.addingUnits = false
									red.movingUnitsb = true
								} else {
									if cella.units == (cella.maxunits) {
										// NO ACTION TAKEN
									} else {
										if red.totalUnits % 2 == 0 {
											red.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										} else {
											red.totalUnits -= 1
											red.playerunits -= 1
											addingunitsforblue += 1
											cella.units += 1
											cella.cbutton.setTitle("\(cella.units)", for: .normal)
										}
									}
								}
							}
						}
					}
				}
			}
			//END: Adding Units Mechanism
			
			//MARK: Moving Units Mechanism
			enum movingUnitse {
				case buttonone
				case buttontwo
			}
			var movingUnits = movingUnitse.buttonone
		var buttonone = cell(id: 0, cbutton: self.A0)
		var buttontwo = cell(id: 0, cbutton: self.A0)
		if movingunitsbutton.isTouchInside == true {
			//MARK: Moving Units Button
			if currentplayer == .playerblue {
				blue.movingUnitsb = true
				red.movingUnitsb = false
			}
			if currentplayer == .playerred {
				red.movingUnitsb = true
				blue.movingUnitsb = false
			}
		}
				if currentplayer == .playerblue && blue.movingUnitsb == true {
					movingUnits = .buttonone
					for cella in cellarray {
						if cella.cbutton.isTouchInside == true {
							buttonone = cella
							buttonone.units -= 1
							movingUnits = .buttontwo
						}
						if cella.cbutton.isTouchInside == true && movingUnits == .buttontwo {
							buttontwo = cella
							buttontwo.units += 1
							blue.movingUnitsb = false
							movingUnits = .buttonone
						}
					}
				}
				if currentplayer == .playerred && blue.movingUnitsb == true {
					movingUnits = .buttonone
					for cella in cellarray {
						if cella.cbutton.isTouchInside == true {
							buttonone = cella
							cella.units -= 1
							movingUnits = .buttontwo
						}
						if cella.cbutton.isTouchInside == true && movingUnits == .buttontwo {
							buttontwo = cella
							blue.movingUnitsb = false
							movingUnits = .buttonone
						}
					}
				}
			//END: Moving Units Mechanism
			
        // Do any additional setup after loading the view.


	

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

	}
		
}


