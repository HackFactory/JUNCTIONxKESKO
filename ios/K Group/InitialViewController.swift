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

class InitialViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    
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
        let textField = SkyFloatingLabelTextField(frame: CGRect(x: 40, y: 270, width: 300, height: 45))
        textField.placeholder = "ex. 6523 3843 4235 7923"
        textField.title = "Your loyalty card number"
        textField.titleColor = UIColor(red: 255.0/255.0, green: 147.0/255.0, blue: 90.0/255.0, alpha: 1.0)
        textField.delegate = self
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(textField)
    }
    
    func addPasswordInput() {
        let textField = SkyFloatingLabelTextField(frame: CGRect(x: 40, y: 330, width: 300, height: 45))
        textField.isSecureTextEntry = true
        textField.placeholder = "password"
        textField.title = "password"
        textField.titleColor = UIColor(red: 247.0/255.0, green: 87.0/255.0, blue: 53.0/255.0, alpha: 1.0)
        textField.delegate = self
        self.view.addSubview(textField)
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
        performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
}
