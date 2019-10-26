//
//  RoundTextField.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/09/29.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

class RoundTextField: UITextField, UITextFieldDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        self.layer.borderWidth = 1
        self.layer.borderColor = ColorManager.brownGrey.cgColor
        self.layer.cornerRadius = 8
//        self.font = UIFont(name: "NotoSansCJKkr-DemiLight", size: 14)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" || textField.text == nil {
            DispatchQueue.main.async {
                self.layer.borderColor = UIColor.red.cgColor
            }
        } else {
            DispatchQueue.main.async {
                self.layer.borderColor = ColorManager.brownGrey.cgColor
            }
        }
    }
}
