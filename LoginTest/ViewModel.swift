//
//  ViewModel.swift
//  LoginTest
//
//  Created by Bruno Gomez on 2/10/22.
//

import Foundation

class ViewModel  {
    
    func validateUsername(_ text : String?) -> Bool {
        
        if let text = text {
            if text.count > 6 && text.count < 24 {
                return true
            }
        }
        return false
    }
    
    func validatePassword(_ text : String?) -> Bool {
        if let text = text {
            if text.count > 8 && text.count < 24 {
                return true
            }
        }
        return false
    }
}
