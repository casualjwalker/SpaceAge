//
//  HomeViewController.swift
//  spage age
//
//  Created by Katie Bautista on 27/06/2016.
//  Copyright © 2016 Katie Bautista. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //Mark: Properties
    var someText = "text"
    let planets = PlanetCollection()
    var selectedPlanet = Planet(name: "Earth", orbitalRatio: 1.0, demonym: "Earth")
    let earthYearInSeconds: Float = 31557600.00
    
    //Mark: Outlets
    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var EnterAgeTextField: UITextField!
    @IBOutlet weak var planetPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateLabel.hidden = true
    }
    
    //TODO: Show Calculation
    @IBAction func ShowCalculation(sender: UIButton) {
        if let age = EnterAgeTextField.text {
            if age != "" {
                let ageInSecs = ageToSeconds(Int(age)!)
                let planetAge = selectedPlanet.ageToPlanetYears(ageInSecs)
                calculateLabel.text = "You are \(planetAge) in \(selectedPlanet.demonym) years!"
            } else {
                calculateLabel.text = "Please enter an Age!"
            }
        }
        calculateLabel.hidden = false
    }
    func ageToSeconds(ageInYears: Int) -> Float {
        return Float(ageInYears) * earthYearInSeconds
    }
    //Mark: Data Source
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = planets.milkyWay[row].name
        let color = UIColor(red: 1, green: 253/255, blue: 225/255, alpha: 1)
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Futura", size: 26.0)!,NSForegroundColorAttributeName:color])
        return myTitle
    }
  
    //Mark: Delegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return planets.milkyWay[row].name
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPlanet = planets.milkyWay[row]
    }
}
