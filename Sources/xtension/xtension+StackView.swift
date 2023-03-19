//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-03-19.
//

import UIKit

extension UIStackView {
    public static func create(
        axis: NSLayoutConstraint.Axis,
        spacing: CGFloat = 8,
        distribution: UIStackView.Distribution = .fill,
        alignment: UIStackView.Alignment = .center,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIStackView {
        let stackView = UIStackView()
        
        stackView.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.distribution = distribution
        stackView.alignment = alignment
        
        return stackView
    }
}
