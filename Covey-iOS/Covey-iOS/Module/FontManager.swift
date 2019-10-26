//
//  FontManager.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/10/24.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

class FontManager {
    let shared = FontManager()
    
    func printFontList() {
        for name in UIFont.familyNames {
          if let nameString = name as? String {
            print(UIFont.fontNames(forFamilyName: nameString))
          }
        }
    }
}
