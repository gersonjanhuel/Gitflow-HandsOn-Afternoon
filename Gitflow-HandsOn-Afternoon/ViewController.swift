//
//  ViewController.swift
//  Gitflow-HandsOn-Afternoon
//
//  Created by Gerson Janhuel on 20/05/20.
//  Copyright © 2020 Elcode Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // When pressed: change the UIView background color according to the button color
    @IBAction func buttonColorPressed(_ sender: UIButton) {
        // do your code here
        let red : CGFloat = .random(in: 0...1)
        let blue : CGFloat = .random(in: 0...1)
        let green : CGFloat = .random(in: 0...1)
        
        let color = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
        
        UIView.animate(withDuration: 1) {
            self.view.backgroundColor = self.colorButton.backgroundColor
            self.colorButton.backgroundColor = color
        }
        
    }
    
    
    // Reset the background to white!
    @IBAction func buttonResetPressed(_ sender: UIButton) {
        // do reset
        self.view.backgroundColor = .white
    }
    
}

