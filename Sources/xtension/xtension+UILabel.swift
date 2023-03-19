//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-03-19.
//

import UIKit

extension UILabel {
    public static func create(
        text: String? = nil,
        style: UIFont.TextStyle = .body,
        adjustForContentSize: Bool = true,
        adjustToFitWidth: Bool = true,
        textAlignment: NSTextAlignment = .left,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        label.font = UIFont.preferredFont(forTextStyle: style)
        label.adjustsFontForContentSizeCategory = adjustForContentSize
        label.adjustsFontSizeToFitWidth = adjustToFitWidth
        label.textAlignment = textAlignment
        label.text = text
        
        return label
    }
}
