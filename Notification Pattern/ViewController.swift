//
//  ViewController.swift
//  Notification Pattern
//
//  Created by Miklos Kekkoi on 10/6/17.
//  Copyright © 2017 Miklos Kekkoi. All rights reserved.
//

import UIKit


extension Notification.Name {
    static let homer = Notification.Name("homer")
    static let bart = Notification.Name("bart")
}


class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        NotificationCenter.default.addObserver(self, selector: #selector(askHomer(notification:)), name: .homer, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(askBart(notfication:)), name: .bart, object: nil)
        
    }

    @IBOutlet weak var bartLabel: UILabel!
    @IBOutlet weak var homerLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    
    @objc func askHomer(notification: NSNotification) {
        homerLabel.text = "Hmmm Dougnots"
        if let amount = notification.userInfo {
            amountLabel.text = amount["amount"] as? String
            
        }
    }
    
    @objc func askBart(notfication: NSNotification) {
        bartLabel.text = "Give it to me"
    }
    

}

