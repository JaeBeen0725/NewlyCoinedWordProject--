//
//  ViewController.swift
//  NewlyCoinedWordProject
//
//  Created by Jae Oh on 2023/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var newlyCoinedWordTextField: UITextField!
    @IBOutlet var explainLabel: UILabel!
    @IBOutlet var buttonStyle: [UIButton]!
    
    @IBOutlet var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var addword = UIButton.Configuration.filled()
        addword.title = "+"
        addword.titleAlignment = .center
        addword.baseBackgroundColor = .black
        
        
       addButton.configuration = addword
        
     
        
        
        for i in buttonStyle {
            i.backgroundColor = .white
        
            var config = UIButton.Configuration.tinted()
            config.baseForegroundColor = .black
            i.layer.cornerRadius = 10
            i.layer.borderWidth = 3
            i.titleLabel?.font = .boldSystemFont(ofSize: 3)
            i.configuration = config
            
            
        }
        
        newlyCoinedWordTextField.layer.borderColor
        
        explainLabel.layer.cornerRadius = 10
        explainLabel.layer.borderWidth = 5
        explainLabel.textColor = .black
        explainLabel.backgroundColor = .white
        explainLabel.textAlignment = .center
        
        newlyCoinedWordTextField.layer.cornerRadius = 5
        newlyCoinedWordTextField.layer.borderWidth = 3
        
    }
    
    
    @IBAction func newlyCoinedWordButtonTapped(_ sender: UIButton) {
        newlyCoinedWordTextField.text = sender.currentTitle
       textFieldTapped(newlyCoinedWordTextField)
        
    }
    
    @IBAction func textFieldTapped(_ sender: UITextField) {
        
        switch newlyCoinedWordTextField.text?.lowercased() {
        case "갑분싸":
            explainLabel.text = "갑자기 분위기 싸해진다"
        case "jmt":
            explainLabel.text = "존맛탱"
        case "안물안궁":
            explainLabel.text = "안물어봤고 안궁금해"
        case "구취":
            explainLabel.text = "구독취소"
        default: explainLabel.text = "찾는내용이 없습니다."
        }
            
        }

    @discardableResult
    func addword() -> String {
        let list = ["번달번줌", "스세권", "군싹", "얼죽아", "국룰"]
        
            let result = list.randomElement()!
             
              
              return result
        
        
    }
    
    @IBAction func unwindToHome(_ sender: UIStoryboardSegue) {
        
    }
    
  

    
}

