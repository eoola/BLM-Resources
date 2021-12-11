//
//  ArticleDetailViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/11/21.
//

import UIKit
import WebKit

class ArticleDetailViewController: UIViewController {
    
    let articleTitle: String
    let articleURL: URL
    
    @IBOutlet var articleWebView: WKWebView!
    
    init?(_ coder: NSCoder, title: String, url: URL) {
        self.articleTitle = title
        self.articleURL = url
        
        super.init(coder: coder)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = URLRequest(url: articleURL)
        
        articleWebView.load(request)
        
        self.tabBarController?.tabBar.isHidden = true
        navigationItem.title = articleTitle

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
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
