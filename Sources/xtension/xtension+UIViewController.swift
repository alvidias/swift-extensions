//
//  xtension+UIViewController.swift
//  
//
//  Created by Yannick Carrière on 2023-01-13.
//

import UIKit

@available(iOS 13.0, *)
extension UIViewController {
    func configureNavigationBar(backgroundColor: UIColor, titleColor: UIColor, buttonColor: UIColor) {
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.configureWithTransparentBackground()
        navBarAppearance.backgroundColor = backgroundColor
        navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: titleColor]
        
        UINavigationBar.appearance().tintColor = buttonColor
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }
    
    func configureTabBarItem(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
