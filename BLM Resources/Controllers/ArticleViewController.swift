//
//  ArticleViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/10/21.
//

import UIKit

class ArticleViewController: UIViewController {
    
    
    @IBOutlet var articleImage: UIImageView!
    @IBOutlet var articleSource: UILabel!
    @IBOutlet var articleSummary: UILabel!
    @IBOutlet var addToArticleButton: UIButton!
    
    var article: Article
    
    init?(coder: NSCoder, article: Article) {
        self.article = article
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.article = Article(title: "", image: UIImage(), source: "", summary: "", articleURL: URL(string: ""))
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addToArticleButton.layer.cornerRadius = 10.0
        configureUI(with: article)
    }
    
    @IBSegueAction func showArticle(_ coder: NSCoder) -> UIViewController? {
        let title = article.title
        guard let url = article.articleURL else { return nil }
        
        return ArticleDetailViewController(coder, title: title, url: url)
    }
    
    
    func configureUI(with article: Article) {
        articleImage.image = article.image
        articleSource.text = "Source: \(article.source ?? "None provided")"
        articleSummary.text = article.summary
        
        articleImage.layer.cornerRadius = 5
        
        navigationItem.title = article.title
        navigationController?.navigationBar.tintColor = UIColor(named: "Learn Text")
        
        //navigationItem.backBarButtonItem?.tintColor = UIColor(named: "Learn Text")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
