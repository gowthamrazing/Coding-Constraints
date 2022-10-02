//
//  ViewController.swift
//  Coding Constraints
//
//  Created by Gowtham Kalaiselvan on 28/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        label()
        button()
    }
}


extension ViewController {
    
    func label() {
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        myLabel.text = "Hello World!"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(
            x: width * 0.5 - width * 0.8 / 2,
            y: height * 0.5 - 50 / 2,
            width: width * 0.8,
            height: 50)
        view.addSubview(myLabel)
    }
    
    func button() {
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(
            x: width * 0.5 - 155,
            y: height * 0.5 + 570 / 2,
            width: width * 0.8,
            height: 50)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(myAction), for: UIControl.Event.touchUpInside)
    }
    
    
    @objc func myAction() {
        print("Button Tapped")
        myLabel.text = "Button Tapped"
    }
}
