
import UIKit

class HomeViewController: UIViewController {
    
    let search = UISearchController()
    let scroll = UIScrollView()
    let imgCat1 = UIImageView()
    let imgCat2 = UIImageView()
    let imgCat3 = UIImageView()
    let imgCat4 = UIImageView()
    let imgCat5 = UIImageView()
    let imgCat6 = UIImageView()
    let M = UILabel()
    let agn = UILabel()
    let searchView = UIView()
    let lupa = UIButton()
    let textField = UITextField()
    let cam = UIButton()
    let stackView = UIStackView()
    let arr: [CategoryHome] = [
        CategoryHome(img: "1", label: "hello"),
        CategoryHome(img: "2", label: "hello"),
        CategoryHome(img: "3", label: "hello"),
        CategoryHome(img: "4", label: "hello"),
        CategoryHome(img: "5", label: "hello"),
        CategoryHome(img: "6", label: "hello")
        
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.badge"), style: .plain, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(add))
        navigationController?.navigationBar.tintColor = .black
        
        
        scrollView()
        stack()
        
        
        
    }
    
    @objc func add(){
        print("hello")
    }
    
    
    func scrollView(){
        
        M.translateFalse()
        view.addSubview(M)
        M.top(view.topAnchor, 90)
        M.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        M.text = "M"
        M.font = .systemFont(ofSize: 30)
        M.textColor = .systemRed
        
        agn.translateFalse()
        view.addSubview(agn)
        agn.top(view.topAnchor, 90)
        agn.left(M.rightAnchor, 0)
        agn.text = "agnet"
        agn.font = .systemFont(ofSize: 30)
        agn.textColor = .blue
        
        searchView.translateFalse()
        view.addSubview(searchView)
        searchView.top(M.bottomAnchor, 10)
        searchView.left(view.leftAnchor, 10)
        searchView.right(view.rightAnchor, -10)
        searchView.layer.cornerRadius = 10
        searchView.layer.borderColor = UIColor.red.cgColor
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
    
    
    
}
