//
//  MessageTableViewCell.swift
//  Kavsar project
//
//  Created by mac on 17/02/23.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    let img = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let messegeView = UIView()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(img)
        self.inputViewController?.hideKeyboardWhenTappedAround()
        
        messegeView.translateFalse()
        contentView.addSubview(messegeView)
        messegeView.top(contentView.topAnchor, 5)
        messegeView.left(contentView.leftAnchor, 10)
        messegeView.right(contentView.rightAnchor, -10)
        messegeView.bottom(contentView.bottomAnchor, -5)
        messegeView.backgroundColor = .systemGray6
        messegeView.layer.cornerRadius = 10
        
        
        img.translatesAutoresizingMaskIntoConstraints = false
        messegeView.addSubview(img)
        img.top(messegeView.topAnchor, 10)
        img.left(messegeView.leftAnchor, 10)
        img.bottom(messegeView.bottomAnchor, -10)
        img.width(50)
        img.height(50)
        img.clipsToBounds = true
        img.layer.cornerRadius = 25
        
        messegeView.addSubview(label3)
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.top(messegeView.topAnchor, 10)
        label3.right(messegeView.rightAnchor, -10)
        label3.font = .systemFont(ofSize: 10)
        label3.text = "19/09/2023"
        
        messegeView.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.top(messegeView.topAnchor, 10)
        label1.left(img.rightAnchor, 10)
        label1.font = .systemFont(ofSize: 15)
        
        messegeView.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.left(img.rightAnchor, 10)
        label2.right(messegeView.rightAnchor, -10)
        label2.bottom(messegeView.bottomAnchor, -10)
        label2.font = .systemFont(ofSize: 12)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
