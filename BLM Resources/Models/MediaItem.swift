//
//  File.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/5/21.
//

import Foundation
import UIKit

enum MediaItem: Hashable {
    case media(Media)
    case category(MediaCategory)
    
    var media: Media? {
        if case .media(let media) = self {
            return media
        } else {
            return nil
        }
    }
    
    var category: MediaCategory? {
        if case .category(let category) = self {
            return category
        } else {
            return nil
        }
    }
    
    static let books: [MediaItem] = [
        .media(Media(genre: "Horror", image: UIImage(systemName: "circle") ?? UIImage())),
        .media(Media(genre: "Sad", image: UIImage(systemName: "circle") ?? UIImage())),
        .media(Media(genre: "Great", image: UIImage(systemName: "circle") ?? UIImage()))
    ]
    
    static let movies: [Media] = [
    
    ]
    
    static let shows: [Media] = [
        
    ]
    
    static let categories: [Media] = [
        
    ]
}
