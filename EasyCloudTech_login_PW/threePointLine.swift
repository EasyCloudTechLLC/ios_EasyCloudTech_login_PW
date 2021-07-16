//
//  threePointLine.swift
//  EasyCloudTech_login_PW
//
//  Created by PW on 7/15/21.
//

import UIKit

class threePointLine: UIView {
    
func updateView()
    {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [ firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        
        layer.startPoint = CGPoint(x: 0, y: 0)
        layer.endPoint = CGPoint(x: 0, y: 1)
    }
    
    
    @IBInspectable var firstColor: UIColor = UIColor.white{
        didSet{
            updateView()
        }
    }
    @IBInspectable var secondColor: UIColor = UIColor.white{
        didSet{
            updateView()
        }
    }
    
    @IBInspectable var thirdColor: UIColor = UIColor.white{
        didSet{
            updateView()
        }
    }
    
    override class var layerClass: AnyClass{
        get{
            return CAGradientLayer.self
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
