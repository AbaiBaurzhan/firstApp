//
//  ViewController.swift
//  firstApp
//
//  Created by Абай Бауржан on 17.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touched(_ sender: Any) {
        
       // label.text = textfield.text
        let a = textfield.text!
        let b = textfield2.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        if let numberA = Double(a), let numberB = Double(b) {
            
            let sum = numberA + numberB
            
            label.text = String(sum)
        } else {
            label.text = "Введите 2 числа"
        }
        
    }

    
    @IBAction func minus(_ sender: Any) {
        
       // label.text = textfield.text
        let a = textfield.text!
        let b = textfield2.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Double(a), let numberB = Double(b) else {
           label.text = "Введите 2 числа"
           return
        }
        
    let sum = numberA - numberB
    
    label.text = String(sum)
    }
    
    
    
    @IBAction func multiplication(_ sender: Any) {
        
        let a = textfield.text!
        let b = textfield2.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Double(a), let numberB = Double(b) else {
           label.text = "Введите 2 числа"
           return
        }
        
    let sum = numberA * numberB
    
    label.text = String(sum)
    }
    
    
    @IBAction func division(_ sender: Any) {
        let a = textfield.text!
        let b = textfield2.text!
        //let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        guard let numberA = Double(a), let numberB = Double(b) else {
           label.text = "Введите 2 числа"
           return
        }
        
    let sum = numberA / numberB
    
    label.text = String(sum)
        
    }
    
    
    
}

