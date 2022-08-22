//
//  PrivateAreaViewController.swift
//  LoginApp
//
//  Created by Илья on 18.08.2022.
//

import UIKit

final class PrivateAreaViewController: UIViewController {

    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Твой личный кабинет, \(person.info.name)"
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let info = segue.destination as? MyInfoViewController else { return }
        info.person = person
    }
}
