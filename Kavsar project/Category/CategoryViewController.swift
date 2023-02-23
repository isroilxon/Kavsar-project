//
//  CategoryViewController.swift
//  Kavsar project
//
//  Created by mac on 14/02/23.
//

import UIKit

class CategoryViewController: UIViewController {
    var collectionView: UICollectionView?
    let arr: [ModelCateg] = [
        ModelCateg(label: "quvvatlagich", img: "charger"),
        ModelCateg(label: "Kalonkalar", img: "speaker"),
        ModelCateg(label: "Aftomabil quvvatlagich", img: "autocharger"),
        ModelCateg(label: "Aftomabil holderlari", img: "holder"),
        ModelCateg(label: "Quloqchinlar", img: "earphone"),
        ModelCateg(label: "Simsiz quloqchinlar", img: "earpods"),
        ModelCateg(label: "Simsiz quloqchinlar", img: "streo"),
        ModelCateg(label: "Aux kabellar", img: "aux"),
        ModelCateg(label: "Qo'shimcha", img: "adapter")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = .init(width: 100, height: 150)
        layout.itemSize = UICollectionViewFlowLayout.automaticSize
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.translatesAutoresizingMaskIntoConstraints =  false
        view.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.backgroundColor = .systemGray6
        
        
        
    }
}
extension CategoryViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label.text = arr[indexPath.row].label
//        print(arr[indexPath.row].label)
        cell.img.image = UIImage(named: arr[indexPath.row].img)
        return cell
    }
    
    
}
