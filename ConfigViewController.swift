//
//  ConfigViewController.swift
//  RBG
//
//  Created by Ranjith R Dixit on 09/10/17.
//  Copyright © 2017 Blueware S. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {

    @IBOutlet weak var text_bluep: UITextField!
    @IBOutlet weak var text_redp: UITextField!
    
    @IBAction func b1_5c(_ sender: Any) {
        var boardvc = BoardViewController()
        boardvc.startenum = .onefive
        boardvc.blueplayername = text_bluep.text ?? "Blue"
        boardvc.redplayername = text_redp.text ?? "Red"
    }
    @IBAction func b2_10c(_ sender: Any) {
        var boardvc = BoardViewController()
        boardvc.startenum = .twoten
        boardvc.blueplayername = text_bluep.text ?? "Blue"
        boardvc.redplayername = text_redp.text ?? "Red"
    }
    @IBAction func b3_15c(_ sender: Any) {
        var boardvc = BoardViewController()
        boardvc.startenum = .threefifteen
        boardvc.blueplayername = text_bluep.text ?? "Blue"
        boardvc.redplayername = text_redp.text ?? "Red"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "onefivesegue"{
            if let boardvc = segue.destination as? BoardViewController {
                boardvc.startenum = .onefive
                boardvc.blueplayername = text_bluep.text ?? ""
                boardvc.redplayername = text_redp.text ?? ""
            }
        }
        if segue.identifier == "twotensegue"{
            if let boardvc = segue.destination as? BoardViewController {
                boardvc.startenum = .twoten
                boardvc.blueplayername = text_bluep.text ?? ""
                boardvc.redplayername = text_redp.text ?? ""
            }
        }
        if segue.identifier == "threefive"{
            if let boardvc = segue.destination as? BoardViewController {
                boardvc.startenum = .onefive
                boardvc.blueplayername = text_bluep.text ?? ""
                boardvc.redplayername = text_redp.text ?? ""
            }
        }
    }
    */

}
