//
//  MainTabBar.swift
//  Navigation
//
//  Created by V SEO on 28.05.2022.
//

import UIKit

class MainTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupControllers()
        // Do any additional setup after loading the view.
    }
    
    
    private func setupControllers(){
       // let tabBarController = UITabBarController()
        
        let feedViewController = UIViewController()
        let profileViewController = UIViewController()
        let profileNavController = UINavigationController(rootViewController: profileViewController)
        let feedNavController = UINavigationController(rootViewController: feedViewController)
       
        feedNavController.tabBarItem.title = "Feed"
        feedNavController.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle.portrait")
        profileNavController.tabBarItem.title = "Profile"
        profileNavController.tabBarItem.image = UIImage(systemName: "house.circle.fill")
        
        viewControllers = [profileNavController,feedNavController]
    }

}
