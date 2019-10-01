//
//  ViewController.swift
//  Assignment1
//
//  Created by mac on 2019-09-25.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Private Instance Variables
    private var m_operand = ""
    private var m_currentValue: Double = 0.0
    private var m_prevValue: Double = 0.0

    private var m_operation="";
   
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickButton(_ sender: UIButton) {
        var calculatorButton = sender.titleLabel?.text

        switch(calculatorButton)
        {
        case "AC":
            m_operand = ""
            m_currentValue = 0.0
            resultLabel.text = m_operand
            break
        case ".":
            if(!(resultLabel.text?.contains("."))!)
            {
            m_operand += calculatorButton!
            }
            break
        case "+":
            m_prevValue = Double(m_operand) as! Double
            m_operand = "";
            m_operation="+";
            resultLabel.text = String(m_currentValue)
            break
        case "-":
            m_prevValue = Double(m_operand) as! Double
            m_operand = "";
            m_operation="-";
            resultLabel.text = String(m_currentValue)
            break
        case "*":
            m_prevValue = Double(m_operand) as! Double
            m_operand = "";
            m_operation="*";
            resultLabel.text = String(m_currentValue)
            break
        case "/":
            m_prevValue = Double(m_operand) as! Double
            m_operand = "";
            m_operation="/";
            resultLabel.text = String(m_currentValue)
            break
        case "=":
            m_currentValue = Double(m_operand) as! Double
            if(m_operation=="+")
            {
              m_operand=String(m_currentValue + m_prevValue)
              m_operation="";
            }
            else if(m_operation=="-")
            {
                m_operand=String(m_prevValue - m_currentValue)
                m_operation="";
            }
            else if(m_operation=="*")
            {
                m_operand=String(m_prevValue * m_currentValue)
                m_operation="";
            }
            else if(m_operation=="/")
            {
                if(m_currentValue == 0)
                {
                    m_operand="0";
                }
                else{
                    m_operand=String(m_prevValue / m_currentValue)
                    
                }
                m_operand="0";
                m_operation="";

            }
            else{
                
            }
            break
        case "DEL":
            m_operand = String(m_operand.dropLast())
            if(m_operand.count == 0)
            {
                m_operand = "0"
            }
            resultLabel.text = m_operand
            break
        default:
            m_operand += calculatorButton!
            
        }
    
        
        resultLabel.text=m_operand
    }
        
    
  


}

