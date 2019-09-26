//
//  ViewController.swift
//  Assignment1
//
//  Created by mac on 2019-09-25.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var m_operand = ""
   
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text="0"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickButton(_ sender: UIButton) {
        var calculatorButton = sender.titleLabel?.text

        switch(calculatorButton)
        {
            
        case ".":
            m_operand += calculatorButton!
            break
        default:
            m_operand += calculatorButton!
            
        }
        
        resultLabel.text=m_operand
    }
        
    
  


}

