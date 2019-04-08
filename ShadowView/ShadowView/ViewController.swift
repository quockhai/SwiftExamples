//
//  ViewController.swift
//  ShadowView
//
//  Created by quockhai on 2019/4/8.
//  Copyright © 2019 Polymath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.shadowView.layer.cornerRadius = 5.0
        
        self.shadowView.layer.shadowColor = UIColor.black.cgColor
        self.shadowView.layer.shadowRadius = 2.0
        self.shadowView.layer.shadowOpacity = 0.5
        self.shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 0.5)
        
        //let rect = self.shadowView.bounds
        let rect = CGRect(x: 0, y: 5, width: self.shadowView.frame.width, height: self.shadowView.frame.height)
        self.shadowView.layer.shadowPath = CGPath(rect: rect, transform: nil)
    }


}

