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
        calculeImc()
    }
    
    func calculeImc() {
         let altura = Double(alturaField.text!)
        let peso = Double(pesoField.text!)
        var imc : Double
       
        if(altura == nil && peso == nil) {
            let alertView = UIAlertController(title: "Dados Inválidos", message: "Verifique se digitou peso e a altura corretamente", preferredStyle: .alert)
            self.present(alertView,  animated: true)
            alertView.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            return
        }
    
        imc = peso! / (altura! * altura!)
        
        var imcConverted = String(format:"%.1f", imc)
    
        switch imc{
        case 19...25:
            imageResult.image = #imageLiteral(resourceName: "ideal")
            result.text = imcConverted
            
        case 0...16:
            imageResult.image = #imageLiteral(resourceName: "magreza")
            result.text = imcConverted
            
        case 25...30:
            imageResult.image = #imageLiteral(resourceName: "sobre")
            result.text = imcConverted
            
        case 30...100:
            imageResult.image = #imageLiteral(resourceName: "obesidade")
            result.text = imcConverted
            
        case 16...18.9:
            imageResult.image = #imageLiteral(resourceName: "abaixo")
            result.text = imcConverted
            
        default:
            print("Default")
        }
        
        
    }
    
    

}

