//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Jacob Haff on 6/23/20.
//  Copyright © 2020 Jacob Haff. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        var letterIndex = 0.0
        
        for letter in "⚡️ZatChat" {
            Timer.scheduledTimer(withTimeInterval: 0.1 * letterIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            
            letterIndex += 1
        }
       
    }
    

}
