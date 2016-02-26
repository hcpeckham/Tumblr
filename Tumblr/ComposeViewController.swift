//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Hannah Peckham on 2/25/16.
//  Copyright © 2016 Hannah Peckham. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet var composeButtons: [UIImageView]!
    
    var composeButtonOrigin = [CGPoint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressNevermind(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    override func viewWillAppear(animated: Bool) {
        //start below the screen
        for var i = 0; i < composeButtons.count; i++ {
            composeButtonOrigin.append(composeButtons[i].frame.origin)
            composeButtons[i].frame.origin.y = composeButtons[i].frame.origin.y + 450
            
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        
        for var i = 0; i < composeButtons.count; i++ {
            //animate
            UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: { () -> Void in
                
                self.composeButtons[i].frame.origin = self.composeButtonOrigin[i]
                
                }, completion: nil)
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
