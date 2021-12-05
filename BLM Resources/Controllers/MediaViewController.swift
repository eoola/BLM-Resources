//
//  MediaViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/5/21.
//

import UIKit

class MediaViewController: UIViewController {
    
    enum Section {
        case media
        case categories
    }
    
    enum SupplementaryViewKind {
        static let header = "header"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var dataSource: UICollectionViewDiffableDataSource<Section, MediaItem>!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
