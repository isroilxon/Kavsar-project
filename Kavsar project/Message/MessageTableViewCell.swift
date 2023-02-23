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
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(img)
        img.translatesAutoresizingMaskIntoConstraints = false
        img.top(contentView.topAnchor, 10)
        img.left(contentView.leftAnchor, 10)
        img.bottom(contentView.bottomAnchor, -10)
        img.width(50)
        img.height(50)
        img.clipsToBounds = true
        img.layer.cornerRadius = 25
        
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
        label1.font = .systemFont(ofSize: 15)
        
        contentView.addSubview(label2)
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.left(img.rightAnchor, 10)
        label2.right(contentView.rightAnchor, -10)
        label2.bottom(contentView.bottomAnchor, -10)
        label2.font = .systemFont(ofSize: 12)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
