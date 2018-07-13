//
//  ViewController.swift
//  IMC
//
//  Created by Vinicius on 12/07/2018.
//  Copyright © 2018 Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    @IBOutlet weak var alturaField: UITextField!
    @IBOutlet weak var pesoField: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var imageResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func calculoImc(_ sender: Any) {
        
        if(alturaField == nil && pesoField == nil) {
            return
        }
        var imc : Double
         let altura = Double(alturaField.text!)
         let peso = Double(pesoField.text!)
        
        imc = peso! / (altura! * altura!)

        result.text = String(format:"%f", imc)
        
        
        
        
        
    }
    
    
    

}

