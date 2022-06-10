//
//  ProfileNavViewController.swift
//  Navigation
//
//  Created by V SEO on 25.05.2022.
//

import UIKit

class ProfileNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc private func tapAction() {
        let vc = PostViewController()
        vc.title = "Просмотр ленты"
     //   navigationController?.pushViewController(vc, animated: true)
        present(vc, animated: true)
    }
    
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }


    

}
