//
//  ViewController.swift
//  Egg Timer
//
//  Created by George Garcia on 4/27/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210      // variable keeps track of what value the timer is at
    
    
    @IBOutlet var timerLabel: UILabel!
    @IBOutlet var finishLabel: UILabel!
    
    func decreaseTimer(){
        
        if time > 0{
            
            time -= 1
            // same as : time = time - 1
        
            timerLabel.text = String(time) // update and convert the Integer into String
        }
        else{
            timer.invalidate()
        }
        
        if time == 0 {
            finishLabel.text = "Eggs are done!"
        }
    }
    
    @IBAction func playButton(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate() // stops the time
    }
    
    
    @IBAction func minusTen(_ sender: AnyObject) {
        
        if time > 10 {
            
            time -= 10
            timerLabel.text = String(time) // update text
        }
    }
    
    
    @IBAction func plusTen(_ sender: AnyObject) { // adds 10 seconds to timer
        
        time += 10
        timerLabel.text = String(time)
        
    }
    
    
    @IBAction func resetButton(_ sender: AnyObject) { // resets timer
        
        time = 210
        timerLabel.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

