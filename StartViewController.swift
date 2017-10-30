//
//  StartViewController.swift
//  RBG
//
//  Created by Ranjith R Dixit on 18/08/17.
//  Copyright © 2017 Blueware S. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var settingsButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helpButton.layer.borderWidth = 1.0
        settingsButton.layer.borderWidth = 1.0
        startButton.layer.borderWidth = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

