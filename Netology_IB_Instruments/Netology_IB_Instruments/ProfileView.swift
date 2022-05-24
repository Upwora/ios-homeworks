//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by V SEO on 24.05.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet weak var UIImage_Settings: UIImageView!
    @IBOutlet weak var UILabel_Name: UILabel!
    
    @IBOutlet weak var UILabel_Birthdate: UILabel!
    @IBOutlet weak var UILabel_City: UILabel!
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupView()
        }
        
        private func setupView() {
            let view = self.loadViewFromXib()
            view.frame = self.bounds // здесь view, загруженная из xib-файла, добавляется на вьюху класса. Ее размер соответствует размеру вьюхе класса и растягивается так же, как и сама вьюха класса.
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.addSubview(view)
        }
        
        private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? UIView else { return UIView() }
            
            return view
        }


}
