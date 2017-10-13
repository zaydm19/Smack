//
//  ChatVC.swift
//  Smack1
//
//  Created by Zayd Midani on 2017-10-11.
//  Copyright © 2017 Zayd Midani. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // To reveal the second view controller.
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        // to give the pan and tap gesture feature 
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        
    }


}
