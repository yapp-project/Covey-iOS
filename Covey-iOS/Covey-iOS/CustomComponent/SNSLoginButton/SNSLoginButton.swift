//
//  SNSLoginButton.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/26.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

class SNSLoginBUtton: UIButton {
    
    let iconView = UIImageView()
    let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setUI()
    }
    
    private func setUI() {
//        textLabel.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
        textLabel.textColor = .black
        
        self.addSubview(iconView)
        self.addSubview(textLabel)
    }
    
    private func refreshSize() {
        
    }
}
