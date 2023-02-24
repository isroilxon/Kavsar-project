//
//  ProfilViewController.swift
//  Kavsar project
//
//  Created by mac on 23/02/23.
//

import UIKit

class ProfilViewController: UIViewController {
    let button  = UIButton()
    let textField = UITextField()
    var complition: ((String) -> Void)?
    let buttonPhoto = UIImageView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        buttonPhoto.translateFalse()
        view.addSubview(buttonPhoto)
        buttonPhoto.top(view.safeAreaLayoutGuide.topAnchor, 20)
        buttonPhoto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonPhoto.width(150)
        buttonPhoto.height(150)
        buttonPhoto.backgroundColor = .gray
        let tap = UITapGestureRecognizer(target: self, action: #selector(photobutton))
        buttonPhoto.addGestureRecognizer(tap)
        buttonPhoto.isUserInteractionEnabled = true
        
        textField.translateFalse()
        view.addSubview(textField)
        textField.top(buttonPhoto.bottomAnchor, 20)
        textField.left(view.leftAnchor, 10)
        textField.right(view.rightAnchor, -10)
        textField.height(60)
        textField.backgroundColor = .systemGray6
        
        button.translateFalse()
        view.addSubview(button)
        button.top(textField.bottomAnchor, 20)
        button.left(view.leftAnchor, 10)
        button.right(view.rightAnchor, -10)
        button.height(50)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(textBut), for: .touchUpInside)
        

        
        

    }
    
    @objc func textBut() {
        complition?(textField.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func photobutton(){
        print("photo")
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
        
    }

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
