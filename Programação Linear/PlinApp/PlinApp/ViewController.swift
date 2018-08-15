//
//  ViewController.swift
//  PlinApp
//
//  Created by Vinicius on 13/08/2018.
//  Copyright © 2018 Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var tfTerno: UITextField!
    @IBOutlet weak var tfVestido: UITextField!
    @IBOutlet weak var tfResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTerno.delegate = self
    }
   
    @IBAction func calcButton(_ sender: Any) {
        var x1 = 7
        var x2 = 2
        guard let pTernos = tfTerno else{return}
        guard let pVestido = tfVestido else{return}
        var ternoI = Int(pTernos.text!)
        var vestidoI = Int(pVestido.text!)
        
        if ternoI == nil{
            return
        }
        if vestidoI == nil{
            return
        }
        
        
        funcaoObjetivo(x1: x1, x2: x2, pTerno: ternoI!, pVestido: vestidoI!)
        
    }
    
    
    func funcaoObjetivo(x1: Int, x2: Int, pTerno: Int, pVestido: Int) {
        var resultado: Int
        resultado = (pTerno * x1) + (pVestido * x2)
        tfResult.text = String(resultado)
    }
    
//    func restricoes(x1: Int, x2: Int) {
//        let at = 2
//        
//        for _ in 1...16 {
//            if at * 2 < 16 {
//                x1 = x1 + 1
//                x2 = 2
//            }
//        }
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("dismiss")
        tfTerno.resignFirstResponder()
        tfVestido.resignFirstResponder()
    }
    
  
    
}

