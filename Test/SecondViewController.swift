//
//  SecondViewController.swift
//  Test
//
//  Created by Benjamin Ulrich on 3/16/18.
//  Copyright © 2018 Benjamin Ulrich. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var CookieLabel: UILabel!
    @IBOutlet weak var StandTop: UILabel!
    @IBOutlet weak var StandBottom: UILabel!
    @IBOutlet weak var ChefTop: UILabel!
    @IBOutlet weak var ChefBottom: UILabel!
    @IBOutlet weak var OvenTop: UILabel!
    @IBOutlet weak var OvenBottom: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAmount()
        updateStandText()
        updateChefText()
        updateOvenText()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func updateAmount() {
        CookieLabel.text = String(ModelTest.count)
    }
    
    private func updateStandText() {
        StandTop.text = "+ " + String(ModelUpgrade.standReturn) + " cookies per click"
        StandBottom.text = "costs: " + String(ModelUpgrade.standCost) + " cookies"
    }
    
    private func updateChefText() {
        ChefTop.text = "+ " + String(ModelUpgrade.chefReturn) + " cookies per click"
        ChefBottom.text = "costs: " + String(ModelUpgrade.chefCost) + " cookies"
    }
    
    private func updateOvenText() {
        OvenTop.text = "+ " + String(ModelUpgrade.ovenReturn) + " cookies per click"
        OvenBottom.text = "costs: " + String(ModelUpgrade.ovenCost) + " cookies"
    }
    
    
    //MARK: ACTIONS
    @IBAction func BuyStand(_ sender: Any) {
        if (ModelTest.count < ModelUpgrade.standCost) {
            return
        }
        ModelTest.change_perClick(x: ModelUpgrade.standReturn)
        ModelTest.subtract(x: ModelUpgrade.standCost)
        ModelUpgrade.standReturn = Int(Double(ModelUpgrade.standReturn) * 1.2)
        ModelUpgrade.standCost = Int(Double(ModelUpgrade.standCost) * 1.3)
        updateAmount()
        updateStandText()
    }
    
    @IBAction func BuyChef(_ sender: Any) {
        if (ModelTest.count < ModelUpgrade.chefCost) {
            return
        }
        ModelTest.change_perClick(x: ModelUpgrade.chefReturn)
        ModelTest.subtract(x: ModelUpgrade.chefCost)
        ModelUpgrade.chefReturn = Int(Double(ModelUpgrade.chefReturn) * 1.2)
        ModelUpgrade.chefCost = Int(Double(ModelUpgrade.chefCost) * 1.3)
        updateAmount()
        updateChefText()
    }
    @IBAction func BuyOven(_ sender: Any) {
        if (ModelTest.count < ModelUpgrade.ovenCost) {
            return
        }
        ModelTest.change_perClick(x: ModelUpgrade.ovenReturn)
        ModelTest.subtract(x: ModelUpgrade.ovenCost)
        ModelUpgrade.ovenReturn = Int(Double(ModelUpgrade.ovenReturn) * 1.2)
        ModelUpgrade.ovenCost = Int(Double(ModelUpgrade.ovenCost) * 1.3)
        updateAmount()
        updateOvenText()
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
