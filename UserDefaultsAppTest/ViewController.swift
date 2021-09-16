//
//  ViewController.swift
//  UserDefaultsAppTest
//
//  Created by Konstantin on 16.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var firstTextLabel: UITextField!
    @IBOutlet var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.isHidden = true
        
        if let userName = UserDefaults.standard.value(forKey: "userName")  {
            userNameLabel.isHidden = false
            userNameLabel.text = userName as? String
        }
        
        
    }

    @IBAction func donePressed(_ sender: Any) {
        
        guard let firstName = firstTextLabel.text, !firstName.isEmpty else {
            wrongFormatAlert()
            return
        }
        guard let secondName = secondTextField.text, !secondName.isEmpty else {
            wrongFormatAlert()
            return
        }
        
        if let _ = Double(firstName) {
            wrongFormatAlert()
        } else if let _ = Double(secondName) {
            wrongFormatAlert()
        } else {
            
            userNameLabel.isHidden = false
            userNameLabel.text = firstName + " " + secondName
            UserDefaults.standard.setValue(userNameLabel.text, forKey: "userName")
        }
        
        firstTextLabel.text = nil
        secondTextField.text = nil
    }
}

extension ViewController {
    
    private func wrongFormatAlert() {
        
        let alert = UIAlertController(title: "Wrong Foramt!",
                                      message: "Please enter your name or surname",
                                      preferredStyle: .alert)
        
        let okActin = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okActin)
        present(alert, animated: true, completion: nil)
    }
}
