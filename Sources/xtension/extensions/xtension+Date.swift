//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-01-16.
//

import Foundation

extension Date {
   public func displayWith(format: String) -> String {
        let dateformat = DateFormatter()
       
        dateformat.dateFormat = format
       
        return dateformat.string(from: self)
    }
}
