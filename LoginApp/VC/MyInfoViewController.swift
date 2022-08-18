//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Илья on 18.08.2022.
//

import UIKit

class MyInfoViewController: UIViewController {

    @IBOutlet var name: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var hobby: UILabel!
    @IBOutlet var facts: UILabel!
    @IBOutlet var socialMedia: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = person.info.name
        age.text = String(person.info.age)
        hobby.text = person.info.hobby
        facts.text = person.info.facts
        socialMedia.text = person.info.socialMedia
    }
}
