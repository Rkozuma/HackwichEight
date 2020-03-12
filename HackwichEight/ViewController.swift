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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func guessNumberPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        
        currentValue = lroundf(slider.value)
        
        
        
    }
    
    
    
}

