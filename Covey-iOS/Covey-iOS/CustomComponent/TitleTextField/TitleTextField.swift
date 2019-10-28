//
//  TitleTextField.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/27.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

class TitleTextField: UITextField {
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func commonInit() {
        
    }
    
    private func setTitleLabel() {
        titleLabel.frame = CGRect(x: 16, y: 13, width: 28, height: 22)
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.text = "Text"
//        titleLabel.clipsToBounds = true
        self.addSubview(titleLabel)
    }
}
