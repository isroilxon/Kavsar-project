//
//  HomeCollectionViewCell.swift
//  Kavsar project
//
//  Created by mac on 22/02/23.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    let img = UIImageView()
    let starImg = UIImageView()
    let label = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let backView = UIView()
    let costBack = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray6
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemPink.cgColor]
        //        backView.layer.addSublayer(gradient)
        gradient.frame = contentView.frame
        gradient.startPoint = CGPoint(x: 1, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        backView.translateFalse()
        contentView.addSubview(backView)
        backView.top(contentView.topAnchor, 5)
        backView.left(contentView.leftAnchor, 5)
        backView.right(contentView.rightAnchor, -5)
        backView.bottom(contentView.bottomAnchor, -5)
        backView.backgroundColor = .white
        backView.contentMode = .scaleAspectFit
        backView.clipsToBounds = true
        backView.layer.cornerRadius = 10
        backView.width(160)
        backView.height(200)
        
        img.translateFalse()
        backView.addSubview(img)
        img.top(backView.topAnchor, 0)
        img.left(backView.leftAnchor, 0)
        img.right(backView.rightAnchor, 0)
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        img.height(120)
        img.image = UIImage(named: "speaker")
        
        label.translateFalse()
        backView.addSubview(label)
        label.top(img.bottomAnchor, 5)
        label.right(backView.rightAnchor, -5)
        label.left(backView.leftAnchor, 5)
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12)
        label.text = "text here"
        
        starImg.translateFalse()
        backView.addSubview(starImg)
        starImg.left(backView.leftAnchor, 5)
        starImg.top(label.bottomAnchor, 5)
        starImg.height(12)
        starImg.width(12)
        starImg.image = UIImage(systemName: "star.fill")
        starImg.tintColor = .red
        
        label2.translateFalse()
        backView.addSubview(label2)
        label2.top(label.bottomAnchor, 5)
        label2.right(backView.rightAnchor, -5)
        label2.left(starImg.rightAnchor, 5)
        label2.numberOfLines = 0
        label2.font = .systemFont(ofSize: 12)
        label2.text = "text here"
        label2.textColor = .gray
        
        costBack.translateFalse()
        backView.addSubview(costBack)
        costBack.top(label2.bottomAnchor, 7)
        costBack.left(backView.leftAnchor, 10)
        costBack.right(backView.rightAnchor, -10)
        costBack.bottom(backView.bottomAnchor, -7)
        costBack.backgroundColor = .blue
        costBack.height(30)
        costBack.width(140)
        costBack.layer.cornerRadius = 6
        
        label3.translateFalse()
        costBack.addSubview(label3)
        label3.left(costBack.leftAnchor, 7)
        label3.centerYAnchor.constraint(equalTo: costBack.centerYAnchor).isActive = true
        label3.right(costBack.rightAnchor, -7)
        label3.font = .systemFont(ofSize: 12)
        label3.textColor = .white
        label3.text = "text here"
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
