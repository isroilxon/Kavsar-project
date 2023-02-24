//
//  HeaderHome.swift
//  Kavsar project
//
//  Created by mac on 14/02/23.
//

import UIKit

class HeaderHome: UITableViewHeaderFooterView {
    
    let label2 = UILabel()
    let person = UIImageView()
    let button = UIButton()
    var complition: ((Bool) -> Void)?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        button.translateFalse()
        contentView.addSubview(button)
        button.top(contentView.topAnchor, 0)
        button.left(contentView.leftAnchor, 0)
        button.right(contentView.rightAnchor, 0)
        button.bottom(contentView.bottomAnchor, 0)
        button.addTarget(self, action: #selector(headerTab), for:.touchUpInside )
        
        person.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(person)
        person.topAnchor.constraint(equalTo: button.topAnchor, constant: 30).isActive = true
        person.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 10).isActive = true
        person.image = UIImage(systemName: "person.circle.fill")
        person.tintColor = .gray
        person.widthAnchor.constraint(equalToConstant: 80).isActive = true
        person.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        button.addSubview(label2)
        label2.topAnchor.constraint(equalTo: person.bottomAnchor,constant: 20).isActive = true
        label2.leftAnchor.constraint(equalTo: button.leftAnchor,constant: 10).isActive = true
        label2.font = .systemFont(ofSize: 25)
        label2.text = "Abdusamatov Isroil"
        label2.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: -20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func headerTab() {
        print("hello")
        complition?(true)
        
    }
    
    

}

    
//
//    let label1 = UILabel()
//    let img = UIImageView()
//    let img2 = UIImageView()
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//
//        img.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(img)
//        img.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10).isActive = true
//        img.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
//        img.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        img.widthAnchor.constraint(equalToConstant: 50).isActive = true
//        img.image = UIImage(systemName: "person.circle.fill")
//        img.clipsToBounds = true
//        img.layer.cornerRadius = 25
//
//        label1.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(label1)
//        label1.topAnchor.constraint(equalTo: img.bottomAnchor,constant: 10).isActive = true
//        label1.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 10).isActive = true
//        label1.font = .systemFont(ofSize: 25)
//        label1.text = "Abdusamatov Isroil"
//
//
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
