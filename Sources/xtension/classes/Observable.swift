//
//  File.swift
//  
//
//  Created by Yannick Carrière on 2023-03-14.
//

import Foundation

final class Observable<T> {
    var value: T {
        didSet {
            for listener in listeners {
                listener(value)
            }
        }
    }
    
    private var listeners: [((T) -> Void)] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T) -> Void) {
        listener(value)
        listeners.append(listener)
    }
}
