//
//  ChatVC.swift
//  Smack
//
//  Created by Developer on 8/21/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var btnBurger: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnBurger.addTarget(self.revealViewController, action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
}
