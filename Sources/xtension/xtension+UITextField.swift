//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-03-19.
//

import UIKit

extension UITextField {
    public static func create(
        placeholder: String? = nil,
        backgroundColor: UIColor? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment = .natural,
        cornerRadius: CGFloat = 0,
        borderWidth: CGFloat = 0,
        borderColor: CGColor? = nil,
        font: UIFont? = nil,
        attributedPlaceholder: NSAttributedString? = nil,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UITextField {
        let textField = UITextField()
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = backgroundColor
        textField.textAlignment = textAlignment
        textField.textColor = textColor
        textField.layer.cornerRadius = cornerRadius
        textField.layer.borderWidth = borderWidth
        textField.layer.borderColor = borderColor
        textField.font = font
        textField.attributedPlaceholder = attributedPlaceholder
        textField.placeholder = placeholder
        
        return textField
    }
}
