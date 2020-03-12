//
//  ViewController.swift
//  HackwichEight
//
//  Created by Marion Ano on 3/10/20.
//  Copyright © 2020 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue = 0
    
    //HW8 PART 3 - PART 2
    
    var targetValue = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
        
        // Call the startNewRoundFunction
        startNewRound()
        
    }
    
    @IBAction func guessNumberPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)" + "\n The target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        
    }
    
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        
        currentValue = lroundf(slider.value)
        
        
        
    }
    
    func startNewRound()
    {
        targetValue = Int.random(in: 0...100)
        currentValue = lroundf(slider.value)
        
        
    }
    
    
}

