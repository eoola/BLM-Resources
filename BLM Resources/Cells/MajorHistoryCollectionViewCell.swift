//
//  MajorHistoryCollectionViewCell.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import UIKit

class MajorHistoryCollectionViewCell: UICollectionViewCell {
    static let reuseidentifier = "MajorHistoryCollectionViewCell"
    
    let stackview: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 0
        stackview.distribution = .fill
        stackview.alignment = .fill
        
        return stackview
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .regular)
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
        
        stackview.addArrangedSubview(titleLabel)
        stackview.setCustomSpacing(10, after: titleLabel)
        stackview.addArrangedSubview(imageView)
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
    
    func configureCell(_ article: Article) {
        titleLabel.text = article.title
        imageView.image = article.image
    }
    
}
