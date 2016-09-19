//
//  ViewController.swift
//  UIContainerViewControllerTransitionExample
//
//  Created by xxxAIRINxxx on 2015/02/08.
//  Copyright (c) 2015 xxxAIRINxxx. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBAction func changeTransition(sender : UISegmentedControl) {
        let toVC = self.storyboard?.instantiateViewController(withIdentifier: "SampleViewController") as! SampleViewController
        var options : UIViewAnimationOptions = .layoutSubviews
        
        switch sender.selectedSegmentIndex {
        case 0 :
            toVC.title = "TransitionFlipFromLeft"
            toVC.view.backgroundColor = UIColor(red: 160.0/255.0, green: 190.0/255.0, blue: 230.0/255.0, alpha: 1.0)
            options = .transitionFlipFromLeft
        case 1 :
            toVC.title = "TransitionFlipFromRight"
            toVC.view.backgroundColor = UIColor(red: 197.0/255.0, green: 180.0/255.0, blue: 164.0/255.0, alpha: 1.0)
            options = .transitionFlipFromRight
        case 2 :
            toVC.title = "TransitionCurlUp"
            toVC.view.backgroundColor = UIColor(red: 240.0/255.0, green: 180.0/255.0, blue: 150.0/255.0, alpha: 1.0)
            options = .transitionCurlUp
        case 3 :
            toVC.title = "TransitionCurlDown"
            toVC.view.backgroundColor = UIColor(red: 240.0/255.0, green: 180.0/255.0, blue: 240/255.0, alpha: 1.0)
            options = .transitionCurlDown
        case 4 :
            toVC.title = "TransitionCrossDissolve"
            toVC.view.backgroundColor = UIColor(red: 170.0/255.0, green: 135.0/255.0, blue: 135.0/255.0, alpha: 1.0)
            options = .transitionCrossDissolve
        case 5 :
            toVC.title = "TransitionFlipFromTop"
            toVC.view.backgroundColor = UIColor(red: 170.0/255.0, green: 210.0/255.0, blue: 120.0/255.0, alpha: 1.0)
            options = .transitionFlipFromTop
        case 6 :
            toVC.title = "TransitionFlipFromBottom"
            toVC.view.backgroundColor = UIColor(red: 150.0/255.0, green: 120.0/255.0, blue: 230.0/255.0, alpha: 1.0)
            options = .transitionFlipFromBottom
        default:
            toVC.title = "TransitionNone"
        }
        
        let fromVC = self.childViewControllers[0] 
        
        self.arn_transition(fromVC: fromVC, toVC: toVC, duration: 1.0, options: options)
    }
}
