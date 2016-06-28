//
//  HomeViewController.swift
//  spage age
//
//  Created by Katie Bautista on 27/06/2016.
//  Copyright © 2016 Katie Bautista. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var EnterAgeTextField: UITextField!
    @IBAction func ShowCalculation(sender: UIButton) {
        if let age = EnterAgeTextField.text {
        
        calculateLabel.text = "You are \(age) years old!"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("I started")

        // Do any additional setup after loading the view.
    }


}
