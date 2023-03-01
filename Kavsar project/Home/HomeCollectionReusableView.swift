//
//  HomeCollectionReusableView.swift
//  Kavsar project
//
//  Created by mac on 01/03/23.
//

import UIKit

class HomeCollectionReusableView: UICollectionReusableView, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    let Euro = UILabel()
    let Mobile = UILabel()
    let searchView = UIView()
    let lupa = UIButton()
    let textField = UITextField()
    let cam = UIButton()
    let stackView = UIStackView()
    let logoView = UIView()
    let scroll = UIScrollView()
    let arr: [CategoryHome] = [
        CategoryHome(img: "1", label: "hello"),
        CategoryHome(img: "2", label: "hello"),
        CategoryHome(img: "3", label: "hello"),
        CategoryHome(img: "4", label: "hello"),
        CategoryHome(img: "5", label: "hello"),
        CategoryHome(img: "6", label: "hello")
        
    ]

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        logoView.translateFalse()
        self.addSubview(logoView)
        logoView.top(self.topAnchor, 90)
        logoView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        Euro.translateFalse()
        logoView.addSubview(Euro)
        Euro.top(logoView.topAnchor, 0)
        Euro.left(logoView.leftAnchor, 0)
        Euro.text = "Euro"
        Euro.font = .systemFont(ofSize: 30)
        Euro.textColor = .red
        
        Mobile.translateFalse()
        logoView.addSubview(Mobile)
        Mobile.top(logoView.topAnchor, 0)
        Mobile.left(Euro.rightAnchor, 0)
        Mobile.right(logoView.rightAnchor, 0)
        Mobile.text = "Mobile"
        Mobile.font = .systemFont(ofSize: 30)
        Mobile.textColor = .blue
        
        searchView.translateFalse()
        self.addSubview(searchView)
        searchView.top(Euro.bottomAnchor, 10)
        searchView.left(self.leftAnchor, 10)
        searchView.right(self.rightAnchor, -10)
        searchView.layer.cornerRadius = 10
        searchView.layer.borderColor = UIColor.systemGray4.cgColor
        searchView.layer.borderWidth = 2
        
        lupa.translateFalse()
        searchView.addSubview(lupa)
        lupa.centerYAnchor.constraint(equalTo: searchView.centerYAnchor).isActive = true
        lupa.left(searchView.leftAnchor, 10)
        lupa.height(30)
        lupa.width(30)
        lupa.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        lupa.tintColor = .black
        
        cam.translateFalse()
        searchView.addSubview(cam)
        cam.centerYAnchor.constraint(equalTo: searchView.centerYAnchor).isActive = true
        cam.right(searchView.rightAnchor, -10)
        cam.height(30)
        cam.width(30)
        cam.addTarget(self, action: #selector(camerabutton), for: .touchUpInside)
        cam.setImage(UIImage(systemName: "camera"), for: .normal)
        cam.tintColor = .black
        
        textField.translateFalse()
        searchView.addSubview(textField)
        textField.top(searchView.topAnchor, 10)
        textField.left(lupa.rightAnchor, 10)
        textField.right(cam.leftAnchor, -10)
        textField.bottom(searchView.bottomAnchor, -10)
        
        scroll.translateFalse()
        self.addSubview(scroll)
        scroll.top(textField.bottomAnchor, 20)
        scroll.left(self.leftAnchor, 10)
        scroll.right(self.rightAnchor, -10)
        scroll.bottom(self.bottomAnchor, -10)
        scroll.height(80)


        
        stackView.translateFalse()
        scroll.addSubview(stackView)
        stackView.top(textField.bottomAnchor, 20)
        stackView.left(scroll.leftAnchor, 0)
        stackView.right(scroll.rightAnchor,0)
//        stackView.bottom(scroll.bottomAnchor, 0)
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        for i  in arr {
            let labelView = UIView()
            let img = UIImageView()
            let label = UILabel()
            
            img.translateFalse()
            labelView.addSubview(img)
            img.top(labelView.topAnchor, 5)
            img.left(labelView.leftAnchor, 5)
            img.right(labelView.rightAnchor, -5)
            img.height(50)
            img.width(50)
            img.image = UIImage(named: i.img)
            
            label.translateFalse()
            labelView.addSubview(label)
            label.top(img.bottomAnchor, 10)
            label.left(labelView.leftAnchor, 5)
            label.right(labelView.rightAnchor, -5)
            label.bottom(labelView.bottomAnchor, -5)
            label.text = i.label
            
            stackView.addArrangedSubview(labelView)
            
        }
      
        
        
    }
    
    @objc func camerabutton(){
        print("hello photo")
//        let vc = UIImagePickerController()
//        vc.sourceType = .camera
//        vc.delegate = self
//        vc.allowsEditing = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
