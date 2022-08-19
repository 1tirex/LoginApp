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
    @IBOutlet var from: UILabel!
    @IBOutlet var hobby: UILabel!
    @IBOutlet var facts: UILabel!
    @IBOutlet var socialMedia: UILabel!
    
    @IBOutlet var cat1: UIImageView!
    @IBOutlet var dog1: UIImageView!
    @IBOutlet var me1: UIImageView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = "My name is \(person.info.name)"
        age.text = String(person.info.age) + " years"
        from.text = "from \(person.info.from)"
        hobby.text = "I'm fond of \(person.info.hobby)"
        facts.text = "Some facts about me: \(person.info.facts)"
        socialMedia.text = person.info.socialMedia
        
//        cat1.image = UIImage.init(named: "cat")
//        dog1.image = UIImage.init(named: "dog")
//        me1.image = UIImage.init(named: "me")
    }
}
