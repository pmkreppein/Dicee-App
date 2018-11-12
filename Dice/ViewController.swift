//
//  ViewController.swift
//  Dice
//
//  Created by Peter M Kreppein on 11/4/18.
//  Copyright © 2018 Peter M Kreppein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomize()
        
    }

    
    func randomize(){
        let random1 = Int(arc4random_uniform(5) + 1)
        let random2 = Int(arc4random_uniform(5) + 1)
        
        dice1.image = UIImage(named: "dice\(random1)")
        dice2.image = UIImage(named: "dice\(random2)")
    }

    @IBAction func rollPressed(_ sender: Any) {
        randomize()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomize()
    }
}

