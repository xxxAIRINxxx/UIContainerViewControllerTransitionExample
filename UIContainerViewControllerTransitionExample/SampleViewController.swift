//
//  SampleViewController.swift
//  UIContainerViewControllerTransitionExample
//
//  Created by xxxAIRINxxx on 2015/02/08.
//  Copyright (c) 2015 Airin. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var label : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = self.title
        
        self.imageView.layer.cornerRadius = self.imageView.frame.width * 0.5
        self.imageView.layer.borderWidth = 10.0
        self.imageView.layer.borderColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.8).CGColor
    }
}