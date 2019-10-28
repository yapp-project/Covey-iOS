//
//  UIGradientView.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/10/24.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

@IBDesignable
class UIGradientView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    private func commonInit() {
        setGradient()
    }
    
    private func setGradient() {
        (layer as! CAGradientLayer).colors = [ColorManager.main.cgColor, ColorManager.sub1.cgColor]
        (layer as! CAGradientLayer).startPoint = CGPoint(x: 0.5, y: 0)
        (layer as! CAGradientLayer).endPoint = CGPoint(x: 0.5, y: 1)
        (layer as! CAGradientLayer).locations = [0, 1]
        
        layoutSubviews()
    }
}
