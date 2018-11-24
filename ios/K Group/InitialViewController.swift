//
//  InitialViewController.swift
//  K Group
//
//  Created by Yaroslav on 11/23/18.
//  Copyright © 2018 Mountain Viewer. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTouchUpInside(_ sender: Any) {
        performSegue(withIdentifier: "MenuSegue", sender: self)
    }
    
}
