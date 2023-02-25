
import UIKit

class HomeViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    let search = UISearchController()
    let scroll = UIScrollView()
    let imgCat1 = UIImageView()
    let imgCat2 = UIImageView()
    let imgCat3 = UIImageView()
    let imgCat4 = UIImageView()
    let imgCat5 = UIImageView()
    let imgCat6 = UIImageView()
    let Euro = UILabel()
    let Mobile = UILabel()
    let searchView = UIView()
    let lupa = UIButton()
    let textField = UITextField()
    let cam = UIButton()
    let stackView = UIStackView()
    let logoView = UIView()
    let arr: [CategoryHome] = [
        CategoryHome(img: "1", label: "hello"),
        CategoryHome(img: "2", label: "hello"),
        CategoryHome(img: "3", label: "hello"),
        CategoryHome(img: "4", label: "hello"),
        CategoryHome(img: "5", label: "hello"),
        CategoryHome(img: "6", label: "hello")
        
    ]
    var collectionView: UICollectionView?

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Asosiy menyu"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.badge"), style: .plain, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(add))
        navigationController?.navigationBar.tintColor = .black
        
        
        scrollView()
        stack()
        tavar()
        
        
        
    }
    
    @objc func add(){
        print("hello")
    }
    
    
    func scrollView(){
        
        logoView.translateFalse()
        view.addSubview(logoView)
        logoView.top(view.topAnchor, 90)
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
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
        view.addSubview(searchView)
        searchView.top(Euro.bottomAnchor, 10)
        searchView.left(view.leftAnchor, 10)
        searchView.right(view.rightAnchor, -10)
        searchView.layer.cornerRadius = 10
        searchView.layer.borderColor = UIColor.systemGray4.cgColor
        searchView.layer.borderWidth = 2
        
        lupa.translateFalse()
        searchView.addSubview(lupa)
        lupa.centerYAnchor.constraint(equalTo: searchView.centerYAnchor).isActive = true
        lupa.left(searchView.leftAnchor, 10)
        lupa.height(40)
        lupa.width(40)
        lupa.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        lupa.tintColor = .black
        
        cam.translateFalse()
        searchView.addSubview(cam)
        cam.centerYAnchor.constraint(equalTo: searchView.centerYAnchor).isActive = true
        cam.right(searchView.rightAnchor, -10)
        cam.height(40)
        cam.width(40)
        cam.addTarget(self, action: #selector(camerabutton), for: .touchUpInside)
        cam.setImage(UIImage(systemName: "camera"), for: .normal)
        cam.tintColor = .black
        
        textField.translateFalse()
        searchView.addSubview(textField)
        textField.top(searchView.topAnchor, 10)
        textField.left(lupa.rightAnchor, 10)
        textField.right(cam.leftAnchor, -10)
        textField.bottom(searchView.bottomAnchor, -10)
        
        
    }
    
    func stack(){
        
        scroll.translateFalse()
        view.addSubview(scroll)
        scroll.top(textField.bottomAnchor, 20)
        scroll.left(view.leftAnchor, 10)
        scroll.right(view.rightAnchor, -10)
        scroll.height(110)


        
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
            img.height(70)
            img.width(70)
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
    
    func tavar(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = .init(width: 100, height: 150)
        layout.itemSize = UICollectionViewFlowLayout.automaticSize
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else { return }
        collectionView.translatesAutoresizingMaskIntoConstraints =  false
        view.addSubview(collectionView)
        collectionView.top(stackView.bottomAnchor, 20)
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.bottom(view.bottomAnchor, -90)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.backgroundColor = .systemGray6
    }
    
    @objc func camerabutton(){
        print("hello photo")
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
        
    }
    
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        arr.count
        5

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
//        cell.label.text = arr[indexPath.row].label
//        cell.img.image = UIImage(named: arr[indexPath.row].img)
        return cell
    }
    
    
}
