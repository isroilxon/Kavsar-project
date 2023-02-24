//
//  HomeCollectionViewCell.swift
//  Kavsar project
//
//  Created by mac on 22/02/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    let img = UIImageView()
    let label = UILabel()
    let backView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray6
        
        backView.translateFalse()
        contentView.addSubview(backView)
        backView.top(contentView.topAnchor, 5)
        backView.left(contentView.leftAnchor, 5)
        backView.right(contentView.rightAnchor, -5)
        backView.backgroundColor = .white
        backView.contentMode = .scaleAspectFit
        backView.clipsToBounds = true
        backView.layer.cornerRadius = 10
        backView.height(200)
        backView.width(150)
        
        img.translateFalse()
        backView.addSubview(img)
        img.top(backView.topAnchor, 0)
        img.left(backView.leftAnchor, 0)
        img.right(backView.rightAnchor, 0)
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.height(100)
        img.image = UIImage(named: "speaker")
        
        label.translateFalse()
        backView.addSubview(label)
        label.top(img.bottomAnchor, 5)
        label.right(backView.rightAnchor, -5)
        label.left(backView.leftAnchor, 5)
        label.bottom(backView.bottomAnchor, -5)
        label.numberOfLines = 0
        label.bottom(contentView.bottomAnchor, -10)
        label.font = .systemFont(ofSize: 12)
        label.text = "text here"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
