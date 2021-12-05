//
//  MovieCollectionViewCell.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/5/21.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    static let reuseidentifier = "MovieCollectionViewCell"
    
    let stackview: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 0
        stackview.distribution = .fill
        stackview.alignment = .fill
        
        return stackview
    }()
    
    let genreLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        label.textColor = UIColor(named: "Learn Text")
        label.setContentHuggingPriority(.required, for: .vertical)
        
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5.0
        imageView.clipsToBounds = true
        
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        stackview.addArrangedSubview(imageView)
        stackview.setCustomSpacing(5, after: imageView)
        stackview.addArrangedSubview(genreLabel)
        addSubview(stackview)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackview.topAnchor.constraint(equalTo: topAnchor),
            stackview.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackview.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackview.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(_ media: Media) {
        genreLabel.text = media.genre
        imageView.image = media.image
    }
}
