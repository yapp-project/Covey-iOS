//
//  UIBoldLabel.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/10/24.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

@IBDesignable
class UIBoldLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        commonInit()
    }
    
    private func commonInit() {
        setFont()
    }
    
    private func setFont() {
        self.textColor = .black
        self.font = UIFont(name: "NotoSansCJKkr-Bold", size: self.font.pointSize)
    }
}
