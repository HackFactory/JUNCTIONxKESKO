//
//  InitialViewController.swift
//  K Group
//
//  Created by Yaroslav on 11/23/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.layer.insertSublayer(gradient, at: 0)
    }
}

extension Character {
    var isDigit : Bool {
        get {
            return "0" <= self && self <= "9"
        }
    }
}

class InitialViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    var loyaltyCardInput: SkyFloatingLabelTextField!
    var passwordInput: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLoginButton()
        
        addLoyaltyCardInput()
        addPasswordInput()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let isDigit = textField.text?.last?.isDigit, !isDigit {
            textField.text?.removeLast()
        }
        
        if textField.text?.count == 2 {
            loyaltyCardInput.backgroundColor = UIColor(red: 251.0/255.0, green: 254.0/255.0, blue: 196.0/255.0, alpha: 1.0)
            let toAdd = "12 3418 4343 9532"
            loyaltyCardInput.text?.append(toAdd)
            
            passwordInput.backgroundColor = UIColor(red: 251.0/255.0, green: 254.0/255.0, blue: 196.0/255.0, alpha: 1.0)
            let password = "adaasd21312sadsad21"
            passwordInput.text = password
        }
        
        let sizes = [4, 9, 14]
        
        for size in sizes {
            if textField.text?.count == size {
                textField.text?.append(" ")
            }
        }
        
        if let length = textField.text?.count, length == 20 {
            textField.text?.removeLast()
        }
    }
    
    func addLoyaltyCardInput() {
        loyaltyCardInput = SkyFloatingLabelTextField(frame: CGRect(x: 40, y: 270, width: 300, height: 45))
        loyaltyCardInput.placeholder = "ex. 6523 3843 4235 7923"
        loyaltyCardInput.title = "Your loyalty card number"
        loyaltyCardInput.titleColor = UIColor(red: 247.0/255.0, green: 87.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        loyaltyCardInput.delegate = self
        loyaltyCardInput.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(loyaltyCardInput)
    }
    
    func addPasswordInput() {
        passwordInput = SkyFloatingLabelTextField(frame: CGRect(x: 40, y: 330, width: 300, height: 45))
        passwordInput.isSecureTextEntry = true
        passwordInput.placeholder = "password"
        passwordInput.title = "password"
        passwordInput.titleColor = UIColor(red: 247.0/255.0, green: 87.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        passwordInput.delegate = self
        self.view.addSubview(passwordInput)
    }
    
    func configureLoginButton() {
        let leftColor = UIColor(red: 255.0/255.0, green: 147.0/255.0, blue: 90.0/255.0, alpha: 1.0)
        let rightColor = UIColor(red: 247.0/255.0, green: 87.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        loginButton.applyGradient(colours: [leftColor, rightColor])
        loginButton.layer.shadowOffset = CGSize(width: 0, height: 2)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
    }

    @IBAction func buttonTouchUpInside(_ sender: Any) {
        if let cardInputLength = loyaltyCardInput.text?.count, cardInputLength >= 2 {
            performSegue(withIdentifier: "MenuSegue", sender: self)
        }
    }
    
}
