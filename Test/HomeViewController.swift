//
//  HomeViewController.swift
//  Test
//
//  Created by Benjamin Ulrich on 5/12/18.
//  Copyright © 2018 Benjamin Ulrich. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func continuePress(_ sender: Any) {
        performSegue(withIdentifier: "HomeToCookie", sender: nil)
    }
    
    
    @IBAction func newGamePress(_ sender: Any) {
        ModelTest.reset()
        ModelUpgrade.reset()
        performSegue(withIdentifier: "HomeToCookie", sender: self)
    }
}
