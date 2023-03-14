//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-01-18.
//

import Foundation
import UIKit

@available(iOS 13.0, *)
extension UITabBarController {
    public func setupTabBar(backgroundColor: UIColor, titleColor: UIColor, selectedItemColor: UIColor, unselectedItemColor: UIColor) {
        let tabBarAppearance = UITabBarAppearance()
        
        tabBarAppearance.configureWithTransparentBackground()
        tabBarAppearance.backgroundColor = backgroundColor
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: selectedItemColor]
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: unselectedItemColor]
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = selectedItemColor
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = unselectedItemColor
        
        tabBar.standardAppearance = tabBarAppearance
        
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = tabBarAppearance
        }
    }
}

