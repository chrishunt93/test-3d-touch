//
//  ViewController.swift
//  Test3DTouch
//
//  Created by Chris Hunt on 10/3/15.
//  Copyright © 2015 Chris Hunt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    
    //var alertController: UIAlertController?
    
    @IBOutlet weak var screenTitle: UILabel!

    @IBOutlet weak var currentPressureValue: UILabel!
    
    @IBOutlet weak var targetView: PushTargetView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad(  )
        /*checking if device has 3D touch at all*/
        //if traitCollection.forceTouchCapability != UIForceTouchCapability.Available {
        //    alertController = UIAlertController( title: "3D Touch Unavailable", message: "Unsupported Device.", preferredStyle: .Alert )
        //}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    * Overriding how the view handles touch events
    */
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event )
        let targetTouches: Set<UITouch> = event!.touchesForView( targetView )!
        let singleTouch: UITouch = targetTouches.first!
        let val = singleTouch.force / singleTouch.maximumPossibleForce
        currentPressureValue.text = String( val )
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //super.touchesMoved(touches, withEvent: event )
        let targetTouches: Set<UITouch> = event!.touchesForView( targetView )!
        let singleTouch: UITouch = targetTouches.first!
        let val = singleTouch.force / singleTouch.maximumPossibleForce
        currentPressureValue.text = String( val )
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //super.touchesEnded(touches, withEvent: event)
        currentPressureValue.text = "0.0"
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        super.touchesCancelled(touches, withEvent: event)
    }

}

