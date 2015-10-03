//
//  PushTargetView.swift
//  Test3DTouch
//
//  Created by Chris Hunt on 10/3/15.
//  Copyright © 2015 Chris Hunt. All rights reserved.
//

import UIKit

class PushTargetView: UIView {
    
    /*
     * Overriding the visual output of the view.
     */
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath( ovalInRect: rect )
        UIColor.redColor().setFill()
        path.fill()
    }

}
