
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


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Kavsar"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.badge"), style: .plain, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(add))
        
        navigationItem.searchController = search
        scrollView()
        


    }
    
    @objc func add(){
        print("hello")
    }
    
    func scrollView(){
        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.top(view.topAnchor, 190)
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
