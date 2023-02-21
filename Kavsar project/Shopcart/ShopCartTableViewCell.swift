
import UIKit

class ShopCartTableViewCell: UITableViewCell {
    let shopView = UIView()
    let img = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let buttonP = UIButton()
    let buttonM = UIButton()
    let viewPM = UIView()
     

    override func awakeFromNib() {
        super.awakeFromNib()

        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        shopView.translateFalse()
        contentView.addSubview(shopView)
        shopView.top(contentView.topAnchor, 10)
        shopView.left(contentView.leftAnchor, 10)
        shopView.bottom(contentView.bottomAnchor, -10)
        
        img.translateFalse()
        contentView.addSubview(img)
        img.top(contentView.topAnchor, 10)
        img.left(contentView.leftAnchor, 10)
        img.bottom(contentView.bottomAnchor, -10)
        img.height(120)
        img.width(120)
        img.image = UIImage(systemName: "house")
        
        label1.translateFalse()
        contentView.addSubview(label1)
        label1.left(img.rightAnchor, 10)
        label1.top(contentView.topAnchor, 10)
        label1.right(contentView.rightAnchor, -10)
        label1.font = .systemFont(ofSize: 20)
        label1.text = "sbchadc"
        
        label2.translateFalse()
        contentView.addSubview(label2)
        label2.top(label1.bottomAnchor, 5)
        label2.left(img.rightAnchor, 10)
        label2.right(contentView.rightAnchor, -10)
        label2.font = .systemFont(ofSize: 25)
        label2.text = "scjbasc"
        
        label3.translateFalse()
        contentView.addSubview(label3)
        label3.left(img.rightAnchor, 10)
        label3.top(label2.bottomAnchor, 5)
        label3.right(contentView.rightAnchor, -10)
        label3.font = .systemFont(ofSize: 20)
        label3.text = "sjcsdcdj"
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
