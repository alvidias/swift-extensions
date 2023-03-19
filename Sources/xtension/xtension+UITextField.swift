//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-03-19.
//

import UIKit

extension UITextField {
    public static func create(
        placeholder: String,
        backgroundColor: UIColor?,
        textColor: UIColor?,
        textAlignment: NSTextAlignment = .natural,
        cornerRadius: CGFloat = 0,
        borderWidth: CGFloat = 0,
        borderColor: CGColor?,
        font: UIFont?,
        attributedPlaceholder: NSAttributedString?
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
        
        return textField
    }
}
