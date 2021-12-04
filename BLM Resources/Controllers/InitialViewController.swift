//
//  InitialViewController.swift
//  BLM Resources
//
//  Created by Emmanuel Ola on 12/4/21.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func openHistory(_ sender: Any) {
        guard
            let tabBarController = storyboard?.instantiateViewController(withIdentifier: "tabs") as? UITabBarController, let historyViewController = (tabBarController.viewControllers?[0] as? UINavigationController)?.topViewController as? HistoryCollectionViewController
        else {
            print("bob")
            return
        }
        
        present(historyViewController, animated: true)
        
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
