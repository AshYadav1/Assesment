//
//  Bindable.swift
//  Assesment
//
//  Created by Admin on 07/08/21.
//

import Foundation

/** A Bindable class to bind the viewmodel and View*/
final class Bindable<T> {
    
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var error: Error?{
        didSet{
            errorObserver?(error)
        }
    }
    
    var observer: ((T?) -> ())?
    var errorObserver: ((Error?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
    
    func bindError(observer: @escaping (Error?) -> ()) {
        self.errorObserver = observer
    }
}
