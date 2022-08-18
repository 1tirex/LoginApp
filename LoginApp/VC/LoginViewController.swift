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
    private let person = Person.getPerson()
    
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
        
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewContolers = tabBar.viewControllers else { return }
        
        for viewContoler in viewContolers {
            if let navigationVC = viewContoler as? UINavigationController {
                guard let privateArea = navigationVC.topViewController as? PrivateAreaViewController else { return }
                privateArea.title = loginTF.text
                guard let info = segue.destination as? MyInfoViewController else { return }
                info.person = person
            }
        }
        
//        guard let navigationVC = segue.destination as? NavigationController else { return }
//        navigationVC.title = loginTF.text
//        guard let info = navigationVC.topViewController as? MyInfoViewController else { return }
//        info.person = person
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String,
                                     sender: Any?) -> Bool {
        if loginTF.text == person.login && passwordTF.text == person.password {
            return true
        } else {
            showAlert(with: "Oops!",
                      and: "Login or password error. Correct and try again")
            return false
        }
    }
    
    //MARK: - IBAction
    
    @IBAction func forgotLoginBotton() {
        showAlert(with: "Prompt", and: "Your login: \(person.login)")
    }
    @IBAction func forgotPasswordBotton() {
        showAlert(with: "Prompt", and: "Your password: \(person.password)")
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
