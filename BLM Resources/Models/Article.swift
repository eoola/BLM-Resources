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
    let source: String?
    let summary: String
    let articleURL: URL?
    
    static let majorArticles: [Article] = [
        Article(title: "Harlem Renaissance", image: UIImage(named: "Harlem Renaissance") ?? UIImage(), source: "Someone", summary: """
The Harlem Renaissance was the development of the Harlem neighborhood in New York City as a black cultural mecca in the early 20th Century and the subsequent social and artistic explosion that resulted. Lasting roughly from the 1910s through the mid-1930s, the period is considered a golden age in African American culture.
""", articleURL: URL(string: "https://www.history.com/topics/roaring-twenties/harlem-renaissance")),
        Article(title: "Martin Luther King", image: UIImage(named: "Martin Luther King") ?? UIImage(), source: "I said someone", summary: """
The Selma to Montgomery march was part of a series of civil rights protests that occurred in 1965 in Alabama, a Southern state with deeply entrenched racist policies. The historic march, and Martin Luther King, Jr.’s participation in it, raised awareness of the difficulties faced by black voters, and the need for a national Voting Rights Act.
""", articleURL: URL(string: "https://www.history.com/topics/1960s/birmingham-church-bombing")),
        Article(title: "Carter G Woodson", image: UIImage(named: "Carter G Woodson") ?? UIImage(), source: "SOMEBODY", summary: """
Carter G. Woodson was an African American writer and historian known as the 'Father of Black History.' He penned the influential book 'The Mis-Education of the Negro.'
""", articleURL: URL(string: "https://www.biography.com/scholar/carter-g-woodson"))
    ]
}
