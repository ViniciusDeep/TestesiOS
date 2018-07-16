//
//  ViewController.swift
//  Conversores
//
//  Created by Vinicius on 13/07/2018.
//  Copyright © 2018 Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var value: UITextField!

    @IBOutlet weak var unitF: UIButton!
    @IBOutlet weak var unitC: UIButton!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultUnit: UILabel!
    @IBOutlet weak var unit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func showNext(_ sender: Any) {
        switch unit.text! {
        case "Temperatura":
            unit.text = "Peso"
            unitC.setTitle("Kilograma", for: UIControlState.normal)
            unitF.setTitle("Libra", for: UIControlState.normal)
        case "Peso":
            unit.text = "Moeda"
            unitC.setTitle("Real", for: UIControlState.normal)
            unitF.setTitle("Dolar", for: UIControlState.normal)
        case "Moeda":
            unit.text = "Distancia"
            unitC.setTitle("Metros", for: UIControlState.normal)
            unitF.setTitle("Kilometros", for: UIControlState.normal)
        default:
            unit.text = "Temperatura"
            unitC.setTitle("Celsius", for: UIControlState.normal)
            unitF.setTitle("Fahrenheit", for: UIControlState.normal)
        }
        convert(nil)
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender {
            if sender == unitC {
                unitF.alpha = 0.5
            }else {
                unitC.alpha = 0.5
            }
            sender.alpha = 1.0
        }
    
        switch unit.text! {
        
        case "Temperatura":
            calcTemperature()
        case "Peso":
            calcWeitgh()
        case "Moeda":
            calcCurrency()
        default:
            calcDistance()
        }
    }
        
        func calcTemperature() {
            guard let temperature = Double(value.text!) else {return}
            if unitC.alpha == 1 {
                resultUnit.text = "Fahrenheit"
                result.text = String(temperature * 1.8 + 32.0)
            } else {
                resultUnit.text = "Celsius"
                result.text = String((temperature - 32.0) - 1.8)
            }
            
        }
        
        
        func calcWeitgh() {
            guard let weitgh = Double(value.text!) else {return}
            if unitC.alpha == 1 {
                resultUnit.text = "Libra"
                result.text = String(weitgh / 2.2046)
            } else {
                resultUnit.text = "Kilograma"
                result.text = String(weitgh * 2.2046)
            }

        }
        
        
        
        func calcCurrency() {
            guard let currency = Double(value.text!) else {return}
            if unitC.alpha == 1 {
                resultUnit.text = "Dolar"
                result.text = String(currency / 3.5)
            } else {
                resultUnit.text = "Real"
                result.text = String(currency * 3.5)
            }
        }
        
        func calcDistance() {
            guard let distance = Double(value.text!) else {return}
            if unitC.alpha == 1 {
                resultUnit.text = "Kilometros"
                result.text = String(distance / 1000.0)
            } else {
                resultUnit.text = "Metros"
                result.text = String(distance * 1000.0)
            }
            
        }
        

    }

