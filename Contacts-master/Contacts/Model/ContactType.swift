//
//  ContactType.swift
//  Contacts
//
//  Created by Kushagra Kurl and Jaskirat Kaur.
//
//

import Foundation
import UIKit

enum ContactInfoType {
    case phone
    case email
    case address
    
    var title: String {
        switch self {
        case .phone: return "Phone number"
        case .email: return "E-mail"
        case .address: return "Address"
        }
    }
    
    
    var keyboardType: UIKeyboardType {
        switch self {
        case .phone: return .phonePad
        case .email: return .emailAddress
        case .address: return .default
        }
    }
    
    
//}
//extension ContactInfoType {
    
    static func contactdataType (numberSection:Int) -> ContactInfoType {

        if numberSection == 2 {
            return .email
        } else if numberSection == 3 {
            return .address
        }else {
            return .phone
        }
    }
    
    static func section (type: ContactInfoType) -> Int {
        
        switch type {
        case .phone:
           return 1
        case .email:
            return 2
        case .address:
            return 3
        }
    }
    
}
