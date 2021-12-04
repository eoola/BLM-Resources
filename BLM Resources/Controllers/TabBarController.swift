//
//  TabBarController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import UIKit

/**
 Class to enable programmatically instantiating the tab bar controller
 */
class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = []
        // Do any additional setup after loading the view.
    }
    
    lazy var historyTabBar: HistoryCollectionViewController = {
        let historyTabBar = HistoryCollectionViewController()
        
        let title = "History"
        let defaultImage = UIImage(named: "clock")
        let selectedImage = UIImage(named: "clock.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        historyTabBar.tabBarItem = tabBarItem
        
        return historyTabBar
    }()
    
    lazy var mediaTabBar: MediaCollectionViewController = {
        let mediaTabBar = MediaCollectionViewController()
        
        let title = "Media"
        let defaultImage = UIImage(named: "music.note.tv")
        let selectedImage = UIImage(named: "music.note.tv.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        historyTabBar.tabBarItem = tabBarItem
        
        return mediaTabBar
    }()
    
    lazy var donateTabBar: DonateCollectionViewController = {
        let donateTabBar = DonateCollectionViewController()
        
        let title = "Donate"
        let defaultImage = UIImage(named: "dollarsign.square")
        let selectedImage = UIImage(named: "dollarsign.square.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        donateTabBar.tabBarItem = tabBarItem
        
        return donateTabBar
    }()
    
    lazy var petitionTabBar: PetitionCollectionViewController = {
        let petitionTabBar = PetitionCollectionViewController()
        
        let title = "Petition"
        let defaultImage = UIImage(named: "pencil.circle")
        let selectedImage = UIImage(named: "pencil.circle.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        petitionTabBar.tabBarItem = tabBarItem
        
        return petitionTabBar
    }()
    
    lazy var contactTabBar: ContactCollectionViewController = {
        let contactTabBar = ContactCollectionViewController()
        
        let title = "Contact"
        let defaultImage = UIImage(named: "phone")
        let selectedImage = UIImage(named: "phone.fill")
        let tabBarItems = (title: title, image: defaultImage, selectedImage: selectedImage)
        let tabBarItem = UITabBarItem(title: tabBarItems.title, image: tabBarItems.image, selectedImage: tabBarItems.selectedImage)
        contactTabBar.tabBarItem = tabBarItem
        
        return contactTabBar
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}
