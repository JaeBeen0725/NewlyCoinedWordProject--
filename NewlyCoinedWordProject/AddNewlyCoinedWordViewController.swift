//
//  AddNewlyCoinedWordViewController.swift
//  NewlyCoinedWordProject
//
//  Created by Jae Oh on 2023/07/24.
//

import UIKit

class AddNewlyCoinedWordViewController: UIViewController {
    
    @IBOutlet var newlyCoinedWord: UITextField!
    @IBOutlet var explainNewlyCoinedWord: UITextField!
    @IBOutlet var addWord: UIButton!
    @IBOutlet var backButton: UIButton!
    
    
    @IBOutlet var textFieldLabel: UITextView!
    
    @IBOutlet var addNewlyCoinedWordPage: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        newlyCoinedWord.layer.cornerRadius = 10
        newlyCoinedWord.layer.borderWidth = 3
        newlyCoinedWord.placeholder = "신조어를 입력하시오"
        explainNewlyCoinedWord.layer.cornerRadius = 10
        explainNewlyCoinedWord.layer.borderWidth = 3
        explainNewlyCoinedWord.placeholder = "신조어를 설명하시오"
        addNewlyCoinedWordPage.layer.cornerRadius = 10
        addNewlyCoinedWordPage.layer.borderWidth = 3
        
        addWord.layer.cornerRadius = 10
        addWord.layer.borderWidth = 3
        var backbutton = UIButton.Configuration.filled()
        backbutton.title = "<"
        backbutton.titleAlignment = .center
        backbutton.baseBackgroundColor = .black
        
        
        backButton.configuration = backbutton
        
        
        
    }
    
    
    
    var dic: [String: String] = [:]
    @IBAction func addWordButtonTapped(_ sender: UIButton) {
        dic.updateValue(explainNewlyCoinedWord.text!, forKey: newlyCoinedWord.text!)
        
        if explainNewlyCoinedWord.text!.count >= 1 || newlyCoinedWord.text!.count >= 1 {
            textFieldLabel.text += "\(newlyCoinedWord.text!)는 \(explainNewlyCoinedWord.text!)라는 뜻이다.\n"
            
        } else {
            let alert = UIAlertController(title: "뭐라도 쓰세요", message: "여백은 용납못합니다", preferredStyle: .alert)
            
            let cancel = UIAlertAction(title: "예", style: .cancel)
           
            
            alert.addAction(cancel)
            
            

            present(alert, animated: true)
        }
        
        
        
            
        
        
        
    }
}
