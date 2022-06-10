//
//  UITabBarController.swift
//  Navigation
//
//  Created by V SEO on 25.05.2022.
//

import UIKit

class MainUITabBarController: UITabBarController {
    
    let feedViewController = ViewController()
    let profileViewController = SecondViewController()
    let postViewController = PostViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers(){
        
        let navControllerFeed = UINavigationController (rootViewController: feedViewController)
        let navControllerProfile = UINavigationController(rootViewController: profileViewController)
        
        //MARK: new description
        feedViewController.tabBarItem.title = "Лента"
        feedViewController.tabBarItem.image = UIImage(systemName: "list.dash.header.rectangle")
        
        profileViewController.tabBarItem.title = "Профиль"
        profileViewController.tabBarItem.image = UIImage(systemName: "person")
        viewControllers = [profileViewController,feedViewController]
        
        navControllerFeed.navigationItem.title = "Post"
        
        
        postViewController.title = "Post"
        postViewController.tabBarItem.badgeValue = "Post about"
    }
}
