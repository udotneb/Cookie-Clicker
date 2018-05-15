//
//  ViewController.swift
//  Test
//
//  Created by Benjamin Ulrich on 3/7/18.
//  Copyright © 2018 Benjamin Ulrich. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

class ViewController: UIViewController {
    
    var perClick = ModelTest.perClick
    var perSecond = 0
    var labelList = [UILabel]()
    
    @IBOutlet weak var CookieNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCount()
        setUpLabels()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: HELPERS
    private func setUpLabels() {
        for _ in 0..<ModelTest.lengthOfList {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            label.center = CGPoint(x: 0, y: 0)
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica Neue Bold", size: 10)
            label.font = label.font.withSize(25.0)
            label.text = "+" + String(ModelTest.perClick)
            label.textColor = UIColor.white
            label.alpha = 0
            label.adjustsFontSizeToFitWidth = true
            label.numberOfLines = 0
            label.minimumScaleFactor = 0.5
            self.view.addSubview(label)
            labelList.append(label)
        }
    }
    
    func updateCount() {
        CookieNumber.text = String(ModelTest.count)
    }
    
    private func animateTouch(x: CGFloat, y: CGFloat) {
        let vibrate = SystemSoundID(1519)
        AudioServicesPlaySystemSound(vibrate)
        let TappedLabel = labelList[ModelTest.returnIndex()]
        TappedLabel.alpha = 1
        TappedLabel.center = CGPoint(x: x, y: y - 25)
        UIView.animate(withDuration: 0.5, delay: 0.05, options: [],
                       animations: {
                        TappedLabel.center = CGPoint(x: x, y: y - 40)
                        //TappedLabel.frame.origin.y -= 15
                        TappedLabel.alpha = 0
        },
                       completion: nil
        )
    }
    
    //MARK: ACTION
    @IBAction func CookieClick(_ sender: UITapGestureRecognizer) {
        ModelTest.add(x: perClick)
        let point = sender.location(in: self.view)
        let x = point.x
        let y = point.y
        animateTouch(x: x, y: y)
        updateCount()
    }
    
    @IBAction func CookieClick2(_ sender: UITapGestureRecognizer) {
        ModelTest.add(x: 2 * perClick)
        let tap1 = sender.location(ofTouch: 0, in: self.view)
        let tap2 = sender.location(ofTouch: 1, in: self.view)
        updateCount()
        animateTouch(x: tap1.x, y: tap1.y)
        animateTouch(x: tap2.x, y: tap2.y)
    }
    
    @IBAction func CookieClick3(_ sender: UITapGestureRecognizer) {
        ModelTest.add(x: 3 * perClick)
        let tap1 = sender.location(ofTouch: 0, in: self.view)
        let tap2 = sender.location(ofTouch: 1, in: self.view)
        let tap3 = sender.location(ofTouch: 2, in: self.view)
        updateCount()
        animateTouch(x: tap1.x, y: tap1.y)
        animateTouch(x: tap2.x, y: tap2.y)
        animateTouch(x: tap3.x, y: tap3.y)
    }
    
    
}




