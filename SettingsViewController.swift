//
//  SettingsViewController.swift
//  RBG
//
//  Created by Ranjith R Dixit on 14/10/17.
//  Copyright © 2017 Blueware S. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var boardvc = BoardViewController()
    public var settingsvolumevalue = Double()
    public var settingsBackgroundmusic = Bool()
    @IBAction func changeVolume(_ sender: UISlider) {
        sender.value = Float(settingsvolumevalue)
    }
    @IBAction func changeBackmusic(_ sender: UISwitch) {
        if sender.isOn == true {
            settingsBackgroundmusic = true
        }
        if sender.isOn == false {
            settingsBackgroundmusic = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
