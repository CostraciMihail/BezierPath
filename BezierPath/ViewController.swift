//
//  ViewController.swift
//  BezierPath
//
//  Created by winify on 4/7/17.
//  Copyright © 2017 misa.organization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let curvedView = CurvedView(frame: view.frame)
        curvedView.backgroundColor = UIColor.yellow
        self.view.addSubview(curvedView)
        
    }
    
}

class CurvedView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        //do some fancy curve drawing
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 200))
        
        let endPoint = CGPoint(x: 350, y: 200)
        path.addLine(to: endPoint)
        path.lineWidth = 3
        
        let cp1 = CGPoint(x: 70, y: 200)
        let cp2 = CGPoint(x: 100, y: 300)
        
        path.addCurve(to: endPoint, controlPoint1: cp1, controlPoint2: cp2)
        
        
        
        path.stroke()
    }
}
