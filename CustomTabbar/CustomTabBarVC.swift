//
//  CustomTabBarVC.swift
//  CustomTabbar
//
//  Created by Jaldeep Patel on 2021-06-24.
//

import Foundation
import UIKit

class CustomTabBarVC:UITabBarController, UITabBarControllerDelegate {
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.selectedIndex = 2
        setupMiddleButton()
    }
    
    func setupMiddleButton() {
        
        let middleButton = UIButton(frame: CGRect(x: (self.view.bounds.width / 2) - 25, y: -25, width: 70, height: 70))
        
        middleButton.setBackgroundImage(UIImage(named: "plus"), for: .normal)
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.1
        middleButton.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
        middleButton.tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
    
        self.tabBar.addSubview(middleButton)
        middleButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        
        self.view.layoutIfNeeded()
    }
    
    @objc func addButtonTapped(sender: UIButton) {
        self.selectedIndex = 2
        print("Tapped")
    }
    
}
