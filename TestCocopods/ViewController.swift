//
//  ViewController.swift
//  TestCocopods
//
//  Created by Dung Do on 8/28/17.
//  Copyright © 2017 Dung Do. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClickShowHUD(_ sender: Any) {
        HUD.show(.progress)
        
        HUD.hide(animated: true)
    }
}

