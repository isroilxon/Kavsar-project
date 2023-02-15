//
//  HeaderHome.swift
//  Kavsar project
//
//  Created by mac on 14/02/23.
//

import UIKit

class HeaderHome: UITableViewHeaderFooterView {
    
    
    let label1 = UILabel()
    let img = UIImageView()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img)
        img.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive = true
        img.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        img.heightAnchor.constraint(equalToConstant: 50).isActive = true
        img.widthAnchor.constraint(equalToConstant: 50).isActive = true
        img.image = UIImage(systemName: "person.circle.fill")
        img.clipsToBounds = true
        img.layer.cornerRadius = 25
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label1)
        label1.topAnchor.constraint(equalTo: img.bottomAnchor,constant: 10).isActive = true
        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive = true
        label1.font = .systemFont(ofSize: 25)
        label1.text = "Abdusamatov Isroil"
        

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
