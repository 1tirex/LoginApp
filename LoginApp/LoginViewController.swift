//
//  ViewController.swift
//  LoginApp
//
//  Created by Илья on 14.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: - @IBOutlet
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Constants
    
    private let login = "User"
    private let password = "Password"
    
    //MARK: - override func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTF.autocorrectionType = .no
        passwordTF.autocorrectionType = .no
        passwordTF.isSecureTextEntry = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? WelcomeViewController else { return }
        loginVC.welcome = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String,
                                     sender: Any?) -> Bool {
        if loginTF.text == login && passwordTF.text == password {
            return true
        } else {
            showAlert(with: "Oops!",
                      and: "Login or password error. Correct and try again")
            return false
        }
    }
    
    //MARK: - IBAction
    
    @IBAction func forgotLoginBotton() {
        showAlert(with: "Prompt", and: "Your login: \(login)")
    }
    @IBAction func forgotPasswordBotton() {
        showAlert(with: "Prompt", and: "Your password: \(password)")
    }
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
}

//MARK: - extension

extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let Ok = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(Ok)
        present(alert, animated: true)
    }
}
