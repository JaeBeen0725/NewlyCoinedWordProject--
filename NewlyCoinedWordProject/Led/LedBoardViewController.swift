//
//  LedBoardViewController.swift
//  NewlyCoinedWordProject
//
//  Created by Jae Oh on 2023/07/25.
//

import UIKit

class LedBoardViewController: UIViewController {

    
    @IBOutlet var ledTextField: UITextField!
    @IBOutlet var ledButtonStyle: [UIButton]!
    @IBOutlet var ledLabel: UILabel!
    
    @IBAction func ledTapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ledTextField.layer.cornerRadius = 10
        for i in ledButtonStyle {
            i.layer.cornerRadius = 10
            i.layer.borderWidth = 3
            i.tintColor = .black
        }
        
        ledLabel.font = UIFont.systemFont(ofSize: 150)
   
        ledLabel.textAlignment = .center
    }
    
    @IBAction func ledSendButtonTapped(_ sender: UIButton) {
        var a : [UIColor] = [.red, .black, .blue]
  
        
        ledLabel.textColor = a.randomElement()
        ledLabel.text = ledTextField.text
    }
    
   

}
