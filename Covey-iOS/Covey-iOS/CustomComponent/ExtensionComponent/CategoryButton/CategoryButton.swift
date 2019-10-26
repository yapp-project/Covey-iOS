//
//  CategoryButton.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/10/26.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

@IBDesignable
class CategoryButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    private func commonInit() {
        setRound()
    }
    
    private func setRound() {
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 6
    }
}
