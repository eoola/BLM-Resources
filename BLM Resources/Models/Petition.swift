//
//  Petition.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/8/21.
//

import Foundation
import UIKit

struct Petition: Hashable {
    let title: String
    let image: UIImage = UIImage(systemName: "pencil.circle") ?? UIImage()
    let fraction: String = "12500/50000 Signatures"
}
