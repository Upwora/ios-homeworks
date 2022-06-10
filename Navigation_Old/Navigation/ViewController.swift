//
//  ViewController.swift
//  Navigation
//
//  Created by V SEO on 25.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .purple
        makeButton()
    }
    private func makeButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        button.center = view.center
        button.setTitle("Пост пользователя", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func tapAction() {
        let alert = UIAlertController(title: "Посмотр поста", message: "Открыть содержимое?", preferredStyle: .actionSheet)
      //  alert.addTextField(configurationHandler: nil)
        let okAction = UIAlertAction(title: "Открыть", style: .default) { _ in
//            self.dismiss(animated: true)
               // self.navigationController?.popViewController(animated: true)
            print(#function)
         
            let text = alert.textFields?.first?.text
            print(text ?? "nil")
            let vc = PostViewController()
          //  self.present(vc, animated: true)
            //vc.postTitle = "New message"
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive)
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

