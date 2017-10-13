//
//  ChannelVC.swift
//  Smack1
//
//  Created by Zayd Midani on 2017-10-11.
//  Copyright © 2017 Zayd Midani. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //how much we want from the back view controller revealed.
     self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

    
}
