//
//  BezierPathsView.swift
//  Dropit
//
//  Created by yuxi xiong on 5/14/15.
//  Copyright (c) 2015 yuxi xiong. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

    private var bezierPath = [String:UIBezierPath]()
    
    func setPath(path:UIBezierPath? ,named name:String) {
        bezierPath[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_,path) in bezierPath {
            path.stroke()
        }
    }
}
