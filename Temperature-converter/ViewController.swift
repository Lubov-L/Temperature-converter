//
//  ViewController.swift
//  Temperature-converter
//
//  Created by Lubov Burbygina on 03.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            
            slider.minimumTrackTintColor = .init(red: 248/255, green: 208/255, blue: 101/255, alpha: 1)
            slider.maximumTrackTintColor = .init(red: 150/255, green: 197/255, blue: 250/255, alpha: 1)
        }
    }
        
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
    @IBAction func resetSlider(_ sender: UIButton) {
        slider.value = 0
        celsiusLabel.text = "0ºC"
        fahrenheitLabel.text = "0ºF"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetButton.layer.cornerRadius = 30
    }
}

