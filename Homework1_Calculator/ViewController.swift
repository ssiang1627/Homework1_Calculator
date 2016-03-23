//
//  ViewController.swift
//  Homework1_Calculator
//
//  Created by mac on 2016/3/22.
//  Copyright © 2016年 ssiang1627. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentNumber: String! = ""
    var storageNumber: Double! = 0
    var caculationOperator: String! = ""

    @IBOutlet weak var resultField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearButtonTapped(sender: UIButton) {
        resultField.text = "0"
        currentNumber = ""
        storageNumber = 0
        caculationOperator = ""
        print("clear")
    }
   
    @IBAction func pnButtonTapped(sender: UIButton) {
        let searchCharacter = "-"
        
        if ((resultField.text?.containsString(searchCharacter)) == true){
            resultField.text?.removeAtIndex((resultField.text?.startIndex)!)
        }else {
            resultField.text?.insert("-", atIndex: (resultField.text?.startIndex)!)
        }

        print("pn")
        
    }
    @IBAction func percentageButtonTapped(sender: UIButton) {
        let result = Double(resultField.text!)!/100.0
        resultField.text = String(result)
        print("percentage")
    }
    @IBAction func divisionButtonTapped(sender: UIButton) {
        if caculationOperator == "" {
            caculationOperator = "/"
            currentNumber = resultField.text
            resultField.text = "0"
        }else if caculationOperator == "/"{
            storageNumber = Double(currentNumber)! / Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "/"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "+"{
            
            storageNumber = Double(currentNumber)! + Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "/"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "*"{
            storageNumber = Double(currentNumber)! * Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "/"
            storageNumber = 0
            resultField.text = "0"

            
        }else if caculationOperator == "-"{
            storageNumber = Double(currentNumber)! - Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "/"
            storageNumber = 0
            resultField.text = "0"

            
        }

        print("division")
    }
    
    @IBAction func multiplicationButtonTapped(sender: UIButton) {
        if caculationOperator == "" {
            caculationOperator = "*"
            currentNumber = resultField.text
            resultField.text = "0"
        }else if caculationOperator == "*"{
            storageNumber = Double(currentNumber)! * Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "*"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "+"{
            
            storageNumber = Double(currentNumber)! + Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "*"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "-"{
            storageNumber = Double(currentNumber)! - Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "*"
            storageNumber = 0
            resultField.text = "0"

            
        }else if caculationOperator == "/"{
            storageNumber = Double(currentNumber)! / Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "*"
            storageNumber = 0
            resultField.text = "0"

            
        }

        print("multiplication")
    }
    @IBAction func minorButtonTapped(sender: UIButton) {
        if caculationOperator == "" {
            caculationOperator = "-"
            currentNumber = resultField.text
            resultField.text = "0"
        }else if caculationOperator == "-"{
            storageNumber = Double(currentNumber)! - Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "-"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "+"{
        
            storageNumber = Double(currentNumber)! + Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "-"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "*"{
            storageNumber = Double(currentNumber)! * Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "-"
            storageNumber = 0
            resultField.text = "0"

            
        }else if caculationOperator == "/"{
            storageNumber = Double(currentNumber)! / Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "-"
            storageNumber = 0
            resultField.text = "0"

            
        }


        print("minor")
    }
    
    @IBAction func plusButtonTapped(sender: UIButton) {
        if caculationOperator == "" {
            caculationOperator = "+"
            currentNumber = resultField.text
            resultField.text = "0"
        }else if caculationOperator == "+"{
            storageNumber = Double(currentNumber)! + Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "+"
            storageNumber = 0
            resultField.text = "0"

        }else if caculationOperator == "-"{
            storageNumber = Double(currentNumber)! - Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "+"
            storageNumber = 0
            resultField.text = "0"

        
        }else if caculationOperator == "*"{
            storageNumber = Double(currentNumber)! * Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "+"
            storageNumber = 0
            resultField.text = "0"

            
        }else if caculationOperator == "/"{
            storageNumber = Double(currentNumber)! / Double(resultField.text!)!
            currentNumber = String(storageNumber)
            resultField.text = currentNumber
            caculationOperator = "+"
            storageNumber = 0
            resultField.text = "0"

            
        }


        print("plus")
    }
    @IBAction func equalButtonTapped(sender: UIButton) {
        if caculationOperator == "+"{
           storageNumber = Double(currentNumber)! + Double(resultField.text!)!
            caculationOperator = ""
        
        }else if caculationOperator == "-"{
            storageNumber = Double(currentNumber)! - Double(resultField.text!)!
            
            caculationOperator = ""
        
        }else if caculationOperator == "*"{
            storageNumber = Double(currentNumber)! * Double(resultField.text!)!
            
            caculationOperator = ""
        }else if caculationOperator == "/"{
            storageNumber = Double(currentNumber)! / Double(resultField.text!)!

            caculationOperator = ""
        }
        
        let testString: String? = String(storageNumber)
        
        if testString![testString!.endIndex.advancedBy(-1)] == "0" && testString![testString!.endIndex.advancedBy(-2)] == "." {
            let answerInt = Int(storageNumber)
            resultField.text = String(answerInt)
        }else {
            resultField.text = String(storageNumber)
        }
        
        currentNumber = ""
        storageNumber = 0
        caculationOperator = ""

        
        
        print("equal")
    }
    @IBAction func numberButtonTapped(theButton: UIButton) {
        
            if resultField.text == "0" {
                
                resultField.text = theButton.titleLabel?.text
            }else if resultField.text != "0"{
                resultField.text! = resultField.text! + theButton.titleLabel!.text!
            }
        
    }

}

 