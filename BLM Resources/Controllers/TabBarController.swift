//
//  TabBarController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = []
        // Do any additional setup after loading the view.
    }
    
    lazy var historyTabBar: HistoryCollectionViewController = {
        let historyTabBar = HistoryCollectionViewController()
        let title = "History"
        let defaultImage = UIImage(named: "")
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
