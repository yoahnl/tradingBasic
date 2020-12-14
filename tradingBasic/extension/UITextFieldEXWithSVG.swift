//
//  UITextFieldEXWithSVG.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 12/12/2020.
//

import UIKit
import PocketSVG

@IBDesignable
class InputTextFieldWithSVG: UITextField {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clearButtonMode = .whileEditing
        self.borderStyle = .none
        self.returnKeyType = .done
        self.backgroundColor = UIColor.clear
        self.textAlignment = .natural
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height , width: Double(self.frame.width), height: height)
        
        borderLine.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 0.5047885314)
        let url = Bundle.main.url(forResource: svgName, withExtension: "svg")!
        let svgImageView = SVGImageView.init(contentsOf: url)
        svgImageView.frame = CGRect(x: -30, y: 0, width: 22, height: 22)
        self.addSubview(svgImageView)
        self.addSubview(borderLine)
    }
    
    @IBInspectable var svgName: String = "" {
        didSet {
            setNeedsLayout()
        }
    }

}
