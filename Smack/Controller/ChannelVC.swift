//
//  ChannelVC.swift
//  Smack
//
//  Created by Developer on 8/21/18.
//  Copyright © 2018 Aaron. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //outlets
    @IBOutlet weak var btnLogin: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
