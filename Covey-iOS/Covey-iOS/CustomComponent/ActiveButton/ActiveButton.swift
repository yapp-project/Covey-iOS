//
//  ActiveButton.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/24.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

@IBDesignable
class ActiveButton: UIButton {
    
    // MARK: - Property
    var isActive = false {
        didSet {
            if self.isActive {
                self.backgroundColor = ColorManager.main
            } else {
                self.backgroundColor = ColorManager.buttonActive
            }
        }
    }
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setBackgroundColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setBackgroundColor()
    }
    
    private func setBackgroundColor() {
        self.backgroundColor = ColorManager.buttonActive
        
    }
}
