//
//  ObservableObject.swift
//  Landmarks
//
//  Created by Shafiul on 6/28/24.
//

import Foundation

class ObservableObject<T> {
    var listener: (T?) -> Void = { _ in }
    
    var result: T? {
        didSet {
            listener(result)
        }
    }
    
    func binding(_ listener: @escaping (T?) -> Void ) {
        self.listener = listener
    }
}
