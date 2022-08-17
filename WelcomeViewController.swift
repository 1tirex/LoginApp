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
    @IBOutlet var logoutBottom: UIButton!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcome ?? "")"
        changeColor()
        settingBottom()
    }
    
    private func changeColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.06571734697, green: 0.6279705167, blue: 0.6793670058, alpha: 1).cgColor,
                                #colorLiteral(red: 0.7914710641, green: 0.4093768299, blue: 0.8299022317, alpha: 1).cgColor,]
        gradientLayer.shouldRasterize = true
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)

        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func settingBottom() {
        logoutBottom.layer.borderWidth = 1
        logoutBottom.layer.borderColor = UIColor.darkGray.cgColor
        logoutBottom.layer.cornerRadius = 15
    }
}
