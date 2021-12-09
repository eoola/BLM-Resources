//
//  ActionItem.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/8/21.
//

import Foundation
import UIKit

enum ActionItem: Hashable {
    case donation(Donation)
    case petition(Petition)
    
    var donation: Donation? {
        if case .donation(let donation) = self {
            return donation
        } else {
            return nil
        }
    }
    
    var petition: Petition? {
        if case .petition(let petition) = self {
            return petition
        } else {
            return nil
        }
    }
    
    static let donations: [ActionItem] = [
        .donation(Donation(title: "Crawford")),
        .donation(Donation(title: "Bobert")),
        .donation(Donation(title: "Grapes"))
    ]
    
    static let petitions: [ActionItem] = [
        .petition(Petition(title: "Defund the police")),
        .petition(Petition(title: "Reparations for slavery")),
        .petition(Petition(title: "Miscellaneous"))
    ]
}
