//
//  MainViewController.swift
//  Covey-iOS
//
//  Created by Jinu Kim on 2019/10/06.
//  Copyright © 2019 com.KakaoTocs.kr. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private var highlightBackgroundView : [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setBackground()
    }
    
    private func setBackground() {
        for backgroundView in highlightBackgroundView {
            backgroundView.backgroundColor = ColorManager.main
        }
    }
    
}
