//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Jacob Haff on 6/23/20.
//  Copyright © 2020 Jacob Haff. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️ZatChat"
    }
}
