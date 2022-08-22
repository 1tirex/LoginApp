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
        
        cat1.image = UIImage.init(named: "cat")
        customImage(for: cat1)
        dog1.image = UIImage.init(named: "dog1")
        customImage(for: dog1)
        me1.image = UIImage.init(named: "me")
        customImage(for: me1)
    }
    
    private func customImage(for sender: UIImageView) {
        sender.layer.masksToBounds = false
        sender.layer.shadowRadius = 5
        sender.layer.shadowOpacity = 0.5
        sender.clipsToBounds = true
        sender.layer.cornerRadius = sender.frame.width/2
        
        addBorderGradient(to: sender, startColor: UIColor.red, endColor: UIColor.blue, lineWidth: 5, startPoint: CGPoint.topLeft, endPoint: CGPoint.bottomRight)
    }
    
    private func addBorderGradient(to view: UIView, startColor:UIColor, endColor: UIColor, lineWidth: CGFloat, startPoint: CGPoint, endPoint: CGPoint) {
        
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint

        let shape = CAShapeLayer()
        
        shape.lineWidth = lineWidth
        shape.path = UIBezierPath(
        arcCenter: CGPoint(x: view.bounds.height/2,
        y: view.bounds.height/2),
        radius: view.bounds.height/2,
        startAngle: CGFloat(0),
        endAngle:CGFloat(CGFloat.pi * 2),
        clockwise: true).cgPath
        shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        view.layer.addSublayer(gradient)
        }
}

extension CGPoint {
     static let topLeft = CGPoint(x: 0, y: 0)
     static let topCenter = CGPoint(x: 0.5, y: 0)
     static let topRight = CGPoint(x: 1, y: 0)
static let centerLeft = CGPoint(x: 0, y: 0.5)
     static let center = CGPoint(x: 0.5, y: 0.5)
     static let centerRight = CGPoint(x: 1, y: 0.5)
static let bottomLeft = CGPoint(x: 0, y: 1.0)
     static let bottomCenter = CGPoint(x: 0.5, y: 1.0)
     static let bottomRight = CGPoint(x: 1, y: 1)
}
