//
//  HomerViewController.swift
//  Notification Pattern
//
//  Created by Miklos Kekkoi on 10/6/17.
//  Copyright © 2017 Miklos Kekkoi. All rights reserved.
//

import UIKit

class HomerViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func yesPlease(_ sender: UIButton) {
        NotificationCenter.default.post(name: .homer, object: nil, userInfo: ["amount": "5"])
    
    }
  
}
