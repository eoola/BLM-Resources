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
            let homeViewController = storyboard?.instantiateViewController(withIdentifier: "tabs") as? UITabBarController
        else {
            print("bob")
            return
        }
        
        self.view.window?.rootViewController = homeViewController
        self.view.window?.backgroundColor = UIColor.white
        self.view.window?.makeKeyAndVisible()
        
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
