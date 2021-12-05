//
//  Article.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import Foundation
import UIKit

struct Article: Hashable {
    let title: String
    let image: UIImage
    
    static let majorArticles: [Article] = [
        Article(title: "Harlem Renaissance", image: UIImage(named: "Harlem Renaissance") ?? UIImage()),
        Article(title: "Martin Luther King", image: UIImage(named: "Martin Luther King") ?? UIImage()),
        Article(title: "Carter G Woodson", image: UIImage(named: "Carter G Woodson") ?? UIImage())
    ]
}
