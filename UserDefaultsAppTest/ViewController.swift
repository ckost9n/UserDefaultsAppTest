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
    }

    @IBAction func donePressed(_ sender: Any) {
        
        
    }
    
}

extension ViewController {
    
    private func wrongFormatAlert() {
        
        let alert = UIAlertController(title: "Wrong Foramt!",
                                      message: "Please enter your name",
                                      preferredStyle: .alert)
        
        let okActin = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okActin)
        present(alert, animated: true, completion: nil)
    }
}
