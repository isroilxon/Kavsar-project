//
//  ProfilViewController.swift
//  Kavsar project
//
//  Created by mac on 23/02/23.
//

import UIKit

class ProfilViewController: UIViewController {
    let buttonsave  = UIButton()
    let buttonsave1 = UIButton()
    let textField1 = UITextField()
    let textField2 = UITextField()
    let textField3 = UITextField()
    var complition: ( (String? ,  UIImage?) -> Void)?
    let buttonPhoto = UIImageView()
    let viewSetting = UIView()
    let viewSetting2 = UIView()
    let camera = UIImageView()
    let phoneImage = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.hideKeyboardWhenTappedAround()
        
        viewSetting.translateFalse()
        view.addSubview(viewSetting)
        viewSetting.top(view.safeAreaLayoutGuide.topAnchor, 20)
        viewSetting.left(view.leftAnchor, 10)
        viewSetting.right(view.rightAnchor, -10)
        viewSetting.height(70)
        viewSetting.layer.cornerRadius = 10
        viewSetting.backgroundColor = .systemGray6
        
        buttonPhoto.translateFalse()
        viewSetting.addSubview(buttonPhoto)
        buttonPhoto.top(viewSetting.topAnchor, 5)
        buttonPhoto.left(viewSetting.leftAnchor, 5)
        buttonPhoto.bottom(viewSetting.bottomAnchor, -5)
        buttonPhoto.width(60)
        buttonPhoto.clipsToBounds = true
        buttonPhoto.layer.cornerRadius = 30
        buttonPhoto.image = UIImage(systemName: "person.circle.fill")
        buttonPhoto.tintColor = .gray
        let tap = UITapGestureRecognizer(target: self, action: #selector(showSimpleActionSheet))
        buttonPhoto.addGestureRecognizer(tap)
        buttonPhoto.isUserInteractionEnabled = true
        
        camera.translateFalse()
        buttonPhoto.addSubview(camera)
        camera.centerXAnchor.constraint(equalTo: buttonPhoto.centerXAnchor).isActive = true
        camera.centerYAnchor.constraint(equalTo: buttonPhoto.centerYAnchor).isActive = true
        camera.height(20)
        camera.width(20)
        camera.image = UIImage(systemName: "camera")
        camera.tintColor = .white
        
        textField1.translateFalse()
        viewSetting.addSubview(textField1)
        textField1.top(viewSetting.topAnchor, 0)
        textField1.left(buttonPhoto.rightAnchor, 0)
        textField1.right(viewSetting.rightAnchor, 0)
        textField1.height(32)
        textField1.placeholder = "Ism"
        textField1.clipsToBounds = true
        textField1.layer.cornerRadius = 10
        textField1.backgroundColor = .systemGray6
        
        textField2.translateFalse()
        viewSetting.addSubview(textField2)
        textField2.left(buttonPhoto.rightAnchor, 0)
        textField2.right(viewSetting.rightAnchor, 0)
        textField2.bottom(viewSetting.bottomAnchor, 0)
        textField2.height(32)
        textField2.placeholder = "Familya"
        textField2.clipsToBounds = true
        textField2.layer.cornerRadius = 10
        textField2.backgroundColor = .systemGray6
        
        viewSetting2.translateFalse()
        view.addSubview(viewSetting2)
        viewSetting2.top(viewSetting.bottomAnchor, 20)
        viewSetting2.left(view.leftAnchor, 10)
        viewSetting2.right(view.rightAnchor, -10)
        viewSetting2.height(50)
        viewSetting2.layer.cornerRadius = 10
        viewSetting2.backgroundColor = .systemGray6
        
        phoneImage.translateFalse()
        viewSetting2.addSubview(phoneImage)
        phoneImage.left(viewSetting2.leftAnchor, 5)
        phoneImage.centerYAnchor.constraint(equalTo: viewSetting2.centerYAnchor).isActive = true
        phoneImage.width(30)
        phoneImage.height(30)
        phoneImage.image = UIImage(systemName: "phone.fill")
        phoneImage.tintColor = .blue
        
        textField3.translateFalse()
        viewSetting2.addSubview(textField3)
        textField3.top(viewSetting2.topAnchor, 0)
        textField3.left(phoneImage.rightAnchor, 0)
        textField3.right(viewSetting2.rightAnchor, 0)
        textField3.height(50)
        textField3.placeholder = "Telefon nomer"
        textField3.clipsToBounds = true
        textField3.layer.cornerRadius = 10
        textField3.backgroundColor = .systemGray6
        
        
        buttonsave.translateFalse()
        view.addSubview(buttonsave)
        buttonsave.right(view.rightAnchor, -30)
        buttonsave.bottom(view.bottomAnchor, -120)
        buttonsave.setTitle("Saqlash", for: .normal)
        buttonsave.height(50)
        buttonsave.width(100)
        buttonsave.clipsToBounds = true
        buttonsave.layer.cornerRadius = 10
        buttonsave.backgroundColor = .blue
        buttonsave.addTarget(self, action: #selector(textBut), for: .touchUpInside)
        
        buttonsave1.translateFalse()
        view.addSubview(buttonsave1)
        buttonsave1.left(view.leftAnchor, 30)
        buttonsave1.bottom(view.bottomAnchor, -120)
        buttonsave1.setTitle("Bekor qilish", for: .normal)
        buttonsave1.height(50)
        buttonsave1.width(100)
        buttonsave1.clipsToBounds = true
        buttonsave1.layer.cornerRadius = 10
        buttonsave1.backgroundColor = .red
        buttonsave1.addTarget(self, action: #selector(cancelBut), for: .touchUpInside)
        
        
        
        
        
    }
    
    @objc func textBut() {
        complition?(textField1.text, buttonPhoto.image )
        //        complition2?(buttonPhoto.image ?? UIImage())
        navigationController?.popViewController(animated: true)
    }
    
    @objc func cancelBut() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func showSimpleActionSheet(controller: UIViewController) {
        let alert = UIAlertController(title: "Profil surati", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Galereyani ochish", style: .default, handler: { (_) in
            let vc = UIImagePickerController()
            vc.sourceType = .photoLibrary
            vc.delegate = self
            vc.allowsEditing = true
            self.present(vc, animated: true)
        }))
        
        alert.addAction(UIAlertAction(title: "Kameraga kirish", style: .default, handler: { (_) in
            let vc = UIImagePickerController()
            vc.sourceType = .camera
            vc.delegate = self
            vc.allowsEditing = true
            self.present(vc, animated: true)
        }))
        
        alert.addAction(UIAlertAction(title: "Bekor qilish", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    //    @objc func photobutton(){
    //        func showSimpleActionSheet(controller: ProfilViewController) {
    //            let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
    //            alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
    //                print("User click Approve button")
    //            }))
    //
    //            alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
    //                print("User click Edit button")
    //            }))
    //
    //            alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
    //                print("User click Delete button")
    //            }))
    //
    //            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
    //                print("User click Dismiss button")
    //            }))
    //
    //            self.present(alert, animated: true, completion: {
    //                print("completion block")
    //            })
    //        }
    //        let vc = UIImagePickerController()
    //        vc.sourceType = .photoLibrary
    //        vc.delegate = self
    //        vc.allowsEditing = true
    //        present(vc, animated: true)
    
}



extension ProfilViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("imfo")
        picker.dismiss(animated: true)
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            buttonPhoto.image = image
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
}

//    let alertControler = UIAlertController(title: "ogahlantrish", message: "sen like buttum bosding", preferredStyle: .alert)
//    let action1 = UIAlertAction(title: "ok", style: .default){_ in
//        print("salom")
//    }
//    alertControler.addAction(action1)
//    self.present(alertControler, animated: true)
