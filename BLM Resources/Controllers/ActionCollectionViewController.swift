//
//  DonateCollectionViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/5/21.
//

import UIKit

private let reuseIdentifier = "DonateCell"

class ActionCollectionViewController: UICollectionViewController {
    
    enum ActionType {
        case donation
        case petition
    }
    
    var actionType: ActionType = .donation

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        navigationItem.title = "Donate"
        collectionView.setCollectionViewLayout(generateLayout(), animated: false)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if tabBarController?.tabBar.selectedItem?.title == "Petitions" {
            navigationItem.title = "Petitions"
            actionType = .petition
        }
        
        tabBarController?.tabBar.tintColor = UIColor(named: "Action Tab Bar Tint")
        tabBarController?.tabBar.unselectedItemTintColor = UIColor(named: "Learn")
    }
    
    private func generateLayout() -> UICollectionViewLayout {
        let spacing: CGFloat = 20
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: spacing, bottom: 0, trailing: spacing)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(100))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.interGroupSpacing = spacing
        
        group.contentInsets = NSDirectionalEdgeInsets(top: spacing, leading: spacing, bottom: 0, trailing: spacing)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    /*
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
     */


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        switch actionType {
        case .donation:
            return ActionItem.donations.count
        case .petition:
            return ActionItem.petitions.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ActionCollectionViewCell
    
        // Configure the cell
        
        switch actionType {
        case .donation:
            cell.title.text = ActionItem.donations[indexPath.item].donation?.title
            cell.image.image = ActionItem.donations[indexPath.item].donation?.image
            cell.fractionLabel.text = ActionItem.donations[indexPath.item].donation?.fraction
        case .petition:
            cell.title.text = ActionItem.petitions[indexPath.item].petition?.title
            cell.image.image = ActionItem.petitions[indexPath.item].petition?.image
            cell.fractionLabel.text = ActionItem.petitions[indexPath.item].petition?.fraction
        }
        
        
        cell.layer.cornerRadius = 10.0
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.clear.cgColor
        cell.layer.masksToBounds = true
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
