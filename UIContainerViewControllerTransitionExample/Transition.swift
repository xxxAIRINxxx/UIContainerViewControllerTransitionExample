//
//  Transition.swift
//  UIContainerViewControllerTransitionExample
//
//  Created by xxxAIRINxxx on 2015/02/08.
//  Copyright (c) 2015 xxxAIRINxxx. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func arn_transition(fromVC: UIViewController, toVC: UIViewController, duration: NSTimeInterval, options: UIViewAnimationOptions) {
        toVC.view.frame = fromVC.view.frame
        
        fromVC.willMoveToParentViewController(nil)
        self.addChildViewController(toVC)
        
        self.transitionFromViewController(fromVC,
            toViewController: toVC,
            duration: 0.5,
            options: options,
            animations: nil) { (finished) -> Void in
            fromVC.removeFromParentViewController()
            toVC.didMoveToParentViewController(self)
        }
    }
}
