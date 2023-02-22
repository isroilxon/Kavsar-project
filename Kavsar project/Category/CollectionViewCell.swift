//
//  CollectionViewCell.swift
//  Kavsar project
//
//  Created by mac on 20/02/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let img = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        img.translateFalse()
        contentView.addSubview(img)
        img.top(contentView.topAnchor, 10)
        img.left(contentView.leftAnchor, 5)
        img.right(contentView.rightAnchor, -5)
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.contentMode = .scaleAspectFit
        img.height(150)
        img.width(100)
        
        label.translateFalse()
        contentView.addSubview(label)
        label.top(img.bottomAnchor, 5)
        label.right(contentView.rightAnchor, -5)
        label.left(contentView.leftAnchor, 5)
        label.numberOfLines = 0
        label.bottom(contentView.bottomAnchor, -10)
        label.text = "sjbvjsb"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
