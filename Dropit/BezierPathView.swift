//
//  BezierPathView.swift
//  Dropit
//
//  Created by Sriharsha Sammeta on 22/03/15.
//  Copyright (c) 2015 Sriharsha Sammeta. All rights reserved.
//

import UIKit

class BezierPathView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path:UIBezierPath?,named name:String){
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    override func drawRect(rect: CGRect) {
        for (_,path)  in bezierPaths{
            path.stroke()
        }
    }

}