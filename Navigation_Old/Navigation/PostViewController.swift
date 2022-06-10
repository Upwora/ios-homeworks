//
//  PostViewController.swift
//  Navigation
//
//  Created by V SEO on 25.05.2022.
//

import UIKit

struct Post {
    var title: String
}

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

    }
    
    var postTitle: Post?
}
