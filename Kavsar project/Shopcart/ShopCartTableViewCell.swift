
import UIKit

class ShopCartTableViewCell: UITableViewCell {
    let shopView = UIView()
    let img = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let minusButton = UIButton()
    let buttonP = UIButton()
    let viewPM = UIView()
    let buttomPt = UIButton()
    var countLabel = UILabel()
    var distance = 1
     

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
        shopView.right(contentView.rightAnchor, -10)
        shopView.backgroundColor = .systemGray6
        shopView.layer.cornerRadius = 15
        
        img.translateFalse()
        shopView.addSubview(img)
        img.top(shopView.topAnchor, 10)
        img.left(shopView.leftAnchor, 10)
        img.bottom(shopView.bottomAnchor, -10)
        img.height(80)
        img.width(80)
        img.image = UIImage(systemName: "house")
        
        label1.translateFalse()
        shopView.addSubview(label1)
        label1.left(img.rightAnchor, 10)
        label1.top(shopView.topAnchor, 10)
        label1.right(shopView.rightAnchor, -10)
        label1.font = .systemFont(ofSize: 22)
        label1.text = "sbchadc"
        
        label2.translateFalse()
        shopView.addSubview(label2)
        label2.top(label1.bottomAnchor, 5)
        label2.left(img.rightAnchor, 10)
        label2.right(shopView.rightAnchor, -10)
        label2.font = .systemFont(ofSize: 15)
        label2.text = "scjbasc"
        label2.textColor = .gray
        
        label3.translateFalse()
        shopView.addSubview(label3)
        label3.left(img.rightAnchor, 10)
        label3.top(label2.bottomAnchor, 5)
        label3.right(shopView.rightAnchor, -10)
        label3.font = .systemFont(ofSize: 20)
        label3.text = "sjcsdcdj"
        
        buttomPt.translateFalse()
        shopView.addSubview(buttomPt)
        buttomPt.top(shopView.topAnchor, 10)
        buttomPt.right(shopView.rightAnchor, -10)
        buttomPt.height(20)
        buttomPt.width(20)
        buttomPt.setImage(UIImage(systemName: "square"), for: .normal)
        buttomPt.tintColor = .black
        buttomPt.addTarget(self, action: #selector(pitch), for: .touchUpInside)

        viewPM.translateFalse()
        shopView.addSubview(viewPM)
        viewPM.right(shopView.rightAnchor, -10)
        viewPM.bottom(shopView.bottomAnchor, -10)
        viewPM.backgroundColor = .white
        viewPM.layer.cornerRadius = 10

        buttonP.translateFalse()
        viewPM.addSubview(buttonP)
        buttonP.top(viewPM.topAnchor, 5)
        buttonP.left(viewPM.leftAnchor, 5)
        buttonP.bottom(viewPM.bottomAnchor, 5)
        buttonP.setImage(UIImage(systemName: "plus"), for: .normal)
        buttonP.tintColor = .black
        buttonP.addTarget(self, action: #selector(plusButton), for: .touchUpInside)
        buttonP.height(40)
        buttonP.width(40)
        
        countLabel.translateFalse()
        viewPM.addSubview(countLabel)
        countLabel.left(buttonP.rightAnchor, 10)
        countLabel.centerYAnchor.constraint(equalTo: viewPM.centerYAnchor).isActive = true
        countLabel.text = "1"
        countLabel.font = .systemFont(ofSize: 17)
        
        minusButton.translateFalse()
        viewPM.addSubview(minusButton)
        minusButton.top(viewPM.topAnchor, 5)
        minusButton.left(countLabel.rightAnchor, 10)
        minusButton.right(viewPM.rightAnchor, -5)
        minusButton.bottom(viewPM.bottomAnchor, 5)
        minusButton.setImage(UIImage(systemName: "minus"), for: .normal)
        minusButton.addTarget(self, action: #selector(buttonMinus), for: .touchUpInside)
        minusButton.tintColor = .black
        minusButton.height(40)
        minusButton.width(40)
        
        
    }
    
    @objc func pitch(){
        buttomPt.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
//        cell.save.setImage(UIImage(systemName: model[button.tag].save ? "bookmark.fill" : "bookmark"), for: .normal)

    }
    
    @objc func plusButton(){
        distance = distance + 1
        countLabel.text = "\(distance)"
    }
    
    @objc func buttonMinus(){
        distance = distance - 1
        countLabel.text = "\(distance)"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
