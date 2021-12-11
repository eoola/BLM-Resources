//
//  Contact.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/9/21.
//

import Foundation
import UIKit

enum ContactType: String, CaseIterable {
    case call = "Call"
    case email = "Email"
    case text = "Text"
}

struct Contact: Hashable {
    let title: String
    let contactType: ContactType
    var image: UIImage {
        switch contactType {
        case .call:
            return UIImage(systemName: "phone.fill") ?? UIImage()
        case .email:
            return UIImage(systemName: "envelope.fill") ?? UIImage()
        case .text:
            return UIImage(systemName: "message.fill") ?? UIImage()
        }
    }
    
    static let callContacts: [Contact] = [
        Contact(title: "Minneapolis District Attorney", contactType: .call),
        Contact(title: "Louisville Mayor", contactType: .call)
    ]
    
    static let emailContacts: [Contact] = [
        Contact(title: "Reparations for Slavery", contactType: .email),
        Contact(title: "Email Templates to Reform and Defund the Police", contactType: .email),
        Contact(title: "Where Does Your State Stand", contactType: .email)
    ]
    
    static let textContacts: [Contact] = [
        Contact(title: "\"JUSTICE\" to 668366", contactType: .text),
        Contact(title: "\"FLOYD\" to 55156", contactType: .text),
        Contact(title: "\"ENOUGH\" to 55156", contactType: .text)
    ]
}
