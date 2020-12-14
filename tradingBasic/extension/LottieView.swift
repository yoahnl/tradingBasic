//
//  LottieView.swift
//  Watermelon
//
//  Created by Yoahn Linard on 08/12/2018.
//  Copyright © 2018 Yoahn Linard. All rights reserved.
//

import UIKit
import Lottie

@IBDesignable
class LottieView: UIView {

    var animationView = AnimationView()
    
    @IBInspectable var lottieFileName: String = ""
        {
        didSet
        {
            setNeedsLayout()
        }
    }

    @IBInspectable var isRepeated: Bool = false
    {
        didSet
        {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var animate: Bool = true
    {
        didSet
        {
            setNeedsLayout()
        }
    }
    
    override func awakeFromNib() {
        self.animationView = AnimationView(name: self.lottieFileName)
        animationView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
            animationView.bounds = self.bounds
        if self.isRepeated
        {
            animationView.loopMode = .loop
        }
        self.addSubview(animationView)
        if animate
        {
            animationView.play()
        }
    }

    func LottieViewAnimate()
    {
        animationView.play()
    }
}
