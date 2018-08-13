//
//  ViewController.swift
//  Calculator
//
//  Created by Muhammad abduh Siregar on 13/08/18.
//  Copyright © 2018 Muhammad abduh Siregar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var newOperation = true
    func AddNumberToInput(number:String){
        var textNumber = String(lblNumberShow.text!)
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        lblNumberShow.text = textNumber
    }
    
    @IBAction func btn0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    
    @IBAction func btnDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    
    @IBAction func btn1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    
    @IBAction func btn2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    
    @IBAction func btn3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    
    @IBAction func btn4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    
    @IBAction func btn5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func btn6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    
    @IBAction func btn7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    
    @IBAction func btn8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func btn9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    var op = "+"
    var number1:Double?
    @IBAction func btnMulti(_ sender: Any) {
        op = "*"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnDel(_ sender: Any) {
        op = "-"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnDiv(_ sender: Any) {
        op = "/"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        op = "+"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnClear(_ sender: Any) {
        lblNumberShow.text = "0"
        newOperation = true
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        var textnumber = String (lblNumberShow.text!)
        textnumber = "-" + textnumber
        lblNumberShow.text = textnumber
    }
    
    @IBAction func btnPercent(_ sender: Any) {
        var number1 = Double(lblNumberShow.text!)
        number1 = number1!/100.0
        lblNumberShow.text = String(number1!)
        newOperation = true
    }
    
    @IBAction func btnEquals(_ sender: Any) {
        let number2 = Double(lblNumberShow.text!)
        var results:Double?
        switch op {
        case "*":
            results = number1! * number2!
        case "-":
            results = number1! - number2!
        case "/":
            results = number1! / number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        lblNumberShow.text = String( results!)
        newOperation = true
    }
    
    
}

