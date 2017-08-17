//
//  CustomView.swift
//  PKExample
//
//  Created by AtsuyaSato on 2017/08/18.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit

class Ripple {
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var size: CGFloat = 0.0
    init(x: CGFloat, y: CGFloat, size: CGFloat) {
        self.x = x
        self.y = y
        self.size = size
    }
}

class CustomView: ProcessingView, ProcessingViewDelegate {

    var ripples: [Ripple] = []

    func setup() {
    }
    
    func draw(){
        background(UIColor.white)

        noFill()
        stroke(UIColor(red:1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        strokeWeight(1.0)
        
        for ripple in ripples {
            ripple.size = ripple.size + 5
            ellipse(ripple.x, ripple.y, ripple.size, ripple.size)
        }
        ripples = ripples.filter { $0.size < 1_000 }
        
        fill(UIColor.black)
        textAlign(.center)
        textSize(20)
        text("Touch Me !!", self.frame.size.width / 2, self.frame.size.height / 2)
    }
    
    func fingerTapped() {
        let ripple = Ripple(x: touchX, y: touchY, size: 0)
        ripples.append(ripple)
    }
}
