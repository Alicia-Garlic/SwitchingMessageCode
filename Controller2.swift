//
//  Controller2.swift
//  Multi-View_Practice
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
var flag = true
class Controller2: UIViewController {
    @IBOutlet weak var boringText: UILabel! //starts there then goes away
    
    @IBOutlet weak var coolText: UILabel!//hidden @ first but then appears
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if flag == true {
        coolText.isHidden = true
        boringText.isHidden = false
        flag = false
        }
        else {
            coolText.isHidden = false
            boringText.isHidden = true
            flag = true
        }
    }//preset so that "this is boring" displays automatically
    func revealNewPhrase () {
        if flag == false {
            coolText.isHidden = false
            boringText.isHidden = true
            flag = true
        }
        else{
            coolText.isHidden = true
            boringText.isHidden = false
            flag = false
        }
}
}
