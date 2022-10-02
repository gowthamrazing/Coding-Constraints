//
//  ViewController.swift
//  Coding Constraints
//
//  Created by Gowtham Kalaiselvan on 28/9/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label()
    }


}


extension ViewController {
    
    func label() {
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Hello World!"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(
            x: width * 0.5 - width * 0.8 / 2,
            y: height * 0.5 - 50 / 2,
            width: width * 0.8,
            height: 50)
        view.addSubview(myLabel)
    }
}
