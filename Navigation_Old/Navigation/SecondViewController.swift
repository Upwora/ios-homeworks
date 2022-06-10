//
//  SecondViewController.swift
//  Navigation
//
//  Created by V SEO on 25.05.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        print(#function)
        makeBarItem()
    }
    
    private func makeBarItem() {
        let barItem = UIBarButtonItem(title: "Дальше", style: .plain, target: self, action: #selector(tapAction))
        navigationItem.rightBarButtonItem = barItem
    }
    
    @objc private func tapAction() {
        let vc = PostViewController()
        vc.title = "Новый"
        navigationController?.pushViewController(vc, animated: true)
    }
  
}
