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

    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.top(contentView.topAnchor, 10)
        img.left(contentView.leftAnchor, 10)
        img.bottom(contentView.bottomAnchor, -10)
        img.width(70)
        img.height(70)
        
        contentView.addSubview(label3)
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.top(contentView.topAnchor, 10)
        label3.right(contentView.rightAnchor, -10)
        label3.font = .systemFont(ofSize: 10)
        label3.text = "19/09/2023"
        
        contentView.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.top(contentView.topAnchor, 10)
        label1.left(img.rightAnchor, 10)
        label1.right(label3.leftAnchor, -5)
        label1.font = .systemFont(ofSize: 25)
        
        contentView.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.left(contentView.leftAnchor, 10)
        label2.right(contentView.rightAnchor, -10)
        label2.bottom(contentView.bottomAnchor, -10)
        label2.font = .systemFont(ofSize: 15)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
