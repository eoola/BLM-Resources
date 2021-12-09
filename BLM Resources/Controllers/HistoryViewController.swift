//
//  ViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import UIKit

class HistoryViewController: UIViewController {
    
    enum Section {
        case major
    }
    
    enum SupplementaryViewKind {
        static let header = "header"
    }
    
    @IBOutlet var collectionView: UICollectionView!
    
    var dataSource: UICollectionViewDiffableDataSource<Section, Article>!
    
    var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // MARK: Collection View Setup
        collectionView.collectionViewLayout = createLayout()
        collectionView.register(MajorHistoryCollectionViewCell.self, forCellWithReuseIdentifier: MajorHistoryCollectionViewCell.reuseidentifier)
        collectionView.backgroundColor = UIColor(named: "Learn")
        
        configureDataSource()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.tabBar.tintColor = UIColor(named: "Learn Tab Bar Tint")
        tabBarController?.tabBar.unselectedItemTintColor = UIColor(named: "Action")
    }
    
    func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            
            let headerItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.92), heightDimension: .estimated(20))
            let headerItem = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerItemSize, elementKind: SupplementaryViewKind.header, alignment: .top)
            
            let supplementaryItemContentInsets = NSDirectionalEdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4)
            headerItem.contentInsets = supplementaryItemContentInsets
            
            let section = self.sections[sectionIndex]
            switch section {
            case .major:
                //MARK: Major Section Layout
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 4)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.92), heightDimension: .estimated(300))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                
                section.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 0, bottom: 20, trailing: 0)
                
                return section
            }
        }
        
        return layout
    }
    
    func configureDataSource() {
        // MARK: Data Source Initialization
        dataSource = .init(collectionView: collectionView, cellProvider: { (collectionView, indexPath, article) -> UICollectionViewCell? in
            let section = self.sections[indexPath.section]
            
            switch section {
            case .major:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MajorHistoryCollectionViewCell.reuseidentifier, for: indexPath) as! MajorHistoryCollectionViewCell
                cell.configureCell(article)
                
                return cell
            }
        })
        
        //MARK: Snapshot Definition
        var snapshot = NSDiffableDataSourceSnapshot<Section, Article>()
        snapshot.appendSections([.major])
        snapshot.appendItems(Article.majorArticles, toSection: .major)
        
        sections = snapshot.sectionIdentifiers
        dataSource.apply(snapshot)
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
