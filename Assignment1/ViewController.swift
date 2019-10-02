  
  // NAME: RAMANDEEP KAUR
  // STUDENTID: 301088232
  // DESCRIPTION: CALCULATOR PERFORMING BASIC MATH FUNCTIONS LIKE ADD,SUBSTRACT, MULTIPLY, DIVIDE, PERCENTAGE, PLUS OVER MINUS(+/-), CLEAR SCREEN
  // DATE:1 OCT 2019
  // VERSION HISTORY: v3 - BASIC functionality AND INTERNAL DOCUMENTATION

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
        //Initating app with clear screen
        resultLabel.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickButton(_ sender: UIButton) {
        
        //Storing data of press button in varibale
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
            // performing basic math function on click of (=) button, by storing numbers in m_prevValue and m_currentValue variable, also storing math operation in m_operation variable
        case "+":
            //assigning previous number in variable
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
        case "%":
            m_currentValue = Double(m_operand) as! Double
            m_operand=String((m_prevValue * m_currentValue) / 100)
            m_operation="";
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
                m_operation="";

            }
            else{
                
            }
            break
        case "DEL":
            // removing last digit from display screen
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
    
        //displaying data in result label
        resultLabel.text=m_operand
    }
        
    
  


}

