
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
    let viewTab = UIView()
    let tabHome = UIButton()
    let tabCateg = UIButton()
    let tabMessag = UIButton()
    let tabShop = UIButton()
    let tabAcc = UIButton()
    let imgHome1 = UIImageView()
    let imgHome2 = UIImageView()
    let imgCate1 = UIImageView()
    let imgCate2 = UIImageView()
    let imgMess1 = UIImageView()
    let imgMess2 = UIImageView()
    let imgShop1 = UIImageView()
    let imgShop2 = UIImageView()
    let imgAcc1 = UIImageView()
    let imgAcc2 = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.badge"), style: .plain, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(add))
        navigationController?.navigationBar.tintColor = .black

        
        scrollView()
//        tabBar()
        
        
        
    }
    
    @objc func add(){
        print("hello")
    }
    
    func tabBar(){
        
        viewTab.translateFalse()
        view.addSubview(viewTab)
        viewTab.left(view.leftAnchor, 0)
        viewTab.right(view.rightAnchor, 0)
        viewTab.bottom(view.bottomAnchor, 0)
        viewTab.height(90)
        viewTab.backgroundColor = .systemGray6
        
        viewTab.addSubview(tabHome)
        tabHome.translateFalse()
        tabHome.left(viewTab.leftAnchor, 10)
        tabHome.centerYAnchor.constraint(equalTo: viewTab.centerYAnchor).isActive = true
        tabHome.height(70)
        tabHome.width(70)
        tabHome.backgroundColor = .red
        
        tabHome.addSubview(imgHome1)
        imgHome1.translateFalse()
        imgHome1.top(tabHome.topAnchor, 0)
        imgHome1.left(tabHome.leftAnchor, 0)
        imgHome1.right(tabHome.rightAnchor, 0)
        imgHome1.bottom(tabHome.bottomAnchor, 0)
        imgHome1.image = UIImage(systemName: "house")
        imgHome1.tintColor = .blue
        
        viewTab.addSubview(tabCateg)
        tabCateg.translateFalse()
        tabCateg.left(tabHome.rightAnchor, 10)
        tabCateg.centerYAnchor.constraint(equalTo: viewTab.centerYAnchor).isActive = true
        tabCateg.height(70)
        tabCateg.width(70)
        tabCateg.backgroundColor = .red
        
        tabCateg.addSubview(imgCate1)
        imgCate1.translateFalse()
        imgCate1.top(tabCateg.topAnchor, 0)
        imgCate1.left(tabCateg.leftAnchor, 0)
        imgCate1.right(tabCateg.rightAnchor, 0)
        imgCate1.bottom(tabCateg.bottomAnchor, 0)
        imgCate1.image = UIImage(systemName: "square.grid.2x2")
        imgCate1.tintColor = .blue
        
        viewTab.addSubview(tabMessag)
        tabMessag.translateFalse()
        tabMessag.centerXAnchor.constraint(equalTo: viewTab.centerXAnchor).isActive = true
        tabMessag.centerYAnchor.constraint(equalTo: viewTab.centerYAnchor).isActive = true
        tabMessag.height(70)
        tabMessag.width(70)
        
        viewTab.addSubview(tabShop)
        tabShop.translateFalse()
        tabShop.left(tabMessag.rightAnchor, 10)
        tabShop.centerYAnchor.constraint(equalTo: viewTab.centerYAnchor).isActive = true
        tabShop.height(70)
        tabShop.width(70)
        tabShop.backgroundColor = .red
        
        viewTab.addSubview(tabAcc)
        tabAcc.translateFalse()
        tabAcc.right(viewTab.rightAnchor, -10)
        tabAcc.centerYAnchor.constraint(equalTo: viewTab.centerYAnchor).isActive = true
        tabAcc.height(70)
        tabAcc.width(70)
        tabAcc.backgroundColor = .red
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
        
        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.top(searchView.bottomAnchor, 20)
        scroll.left(view.leftAnchor,0)
        scroll.right(view.rightAnchor,0)
        scroll.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        scroll.addSubview(imgCat1)
        imgCat1.translatesAutoresizingMaskIntoConstraints = false
        imgCat1.top(scroll.topAnchor,10)
        imgCat1.left(scroll.leftAnchor,10)
        imgCat1.bottom(scroll.bottomAnchor,-10)
        imgCat1.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat1.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat1.image = UIImage(named: "1")
        
        scroll.addSubview(imgCat2)
        imgCat2.translatesAutoresizingMaskIntoConstraints = false
        imgCat2.top(scroll.topAnchor,10)
        imgCat2.left(imgCat1.rightAnchor,10)
        imgCat2.bottom(scroll.bottomAnchor,-10)
        imgCat2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat2.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat2.image = UIImage(named: "2")
        
        scroll.addSubview(imgCat3)
        imgCat3.translatesAutoresizingMaskIntoConstraints = false
        imgCat3.top(scroll.topAnchor,10)
        imgCat3.left(imgCat2.rightAnchor,10)
        imgCat3.bottom(scroll.bottomAnchor,-10)
        imgCat3.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat3.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat3.image = UIImage(named: "3")
        
        scroll.addSubview(imgCat4)
        imgCat4.translatesAutoresizingMaskIntoConstraints = false
        imgCat4.top(scroll.topAnchor,10)
        imgCat4.left(imgCat3.rightAnchor,10)
        imgCat4.bottom(scroll.bottomAnchor,-10)
        imgCat4.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat4.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat4.image = UIImage(named: "4")
        
        scroll.addSubview(imgCat6)
        imgCat6.translatesAutoresizingMaskIntoConstraints = false
        imgCat6.top(scroll.topAnchor,10)
        imgCat6.left(imgCat4.rightAnchor,10)
        imgCat6.bottom(scroll.bottomAnchor,-10)
        imgCat6.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat6.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat6.image = UIImage(named: "6")
        
        
        scroll.addSubview(imgCat5)
        imgCat5.translatesAutoresizingMaskIntoConstraints = false
        imgCat5.top(scroll.topAnchor,10)
        imgCat5.left(imgCat6.rightAnchor,10)
        imgCat5.right(scroll.rightAnchor,-10)
        imgCat5.bottom(scroll.bottomAnchor,-10)
        imgCat5.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat5.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imgCat5.image = UIImage(named: "5")
        
    }
    
    
    
}
