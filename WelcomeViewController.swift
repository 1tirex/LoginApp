//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcome
    }
}
