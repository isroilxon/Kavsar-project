

import UIKit

class AccountViewController: UIViewController {
    
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    let search = UIButton()
    let backTab = UIView()
    let arr:[Category] = [
        Category(name: "", list: []),
        Category(name: "Asosiy", list: [
            Menu(img: "cube", label: "Buyurtmalar"),
//            Menu(img: "star", label: "Product Reviews"),
            Menu(img: "heart", label: "Tanlanganlar"),
            Menu(img: "location", label: "Bizning Filial")
//            Menu(img: "house.and.flag", label: "Favorite shops"),
//            Menu(img: "mail", label: "Coupons"),
//            Menu(img: "ellipsis.message", label: "Message")
        ]),
        Category(name: "Qo'shimcha", list: [
            Menu(img: "network", label: "Til"),
            Menu(img: "beats.headphones", label: "Biz bilan bog'lanish"),
            Menu(img: "rectangle.portrait.and.arrow.right", label: "Dasturdan chiqish")
        
        ])
//        Category(name: "Settings", list: [
//            Menu(img: "location", label: "Delivery adresses"),
//            Menu(img: "creditcard", label: "Saved cards"),
//            Menu(img: "gearshape", label: "Personal info"),
//            Menu(img: "bell", label: "Notifications")
//        ]),
//        Category(name: "Personal", list: [
//            Menu(img: "location.magnifyingglass", label: "Uzbekistan"),
//            Menu(img: "network", label: "English"),
//            Menu(img: "creditcard.and.123", label: "Uzbekistan som")
//
//        ]),
//        Category(name: "Information", list: [
//            Menu(img: "beats.headphones", label: "Support"),
//            Menu(img: "book", label: "Kavsar Magazine"),
//            Menu(img: "figure.walk.arrival", label: "How to open a store on Kavsar"),
//            Menu(img: "exclamationmark.circle", label: "About the app"),
//            Menu(img: "rectangle.portrait.and.arrow.right", label: "Sign out")
//
//        ])
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Sozlamalar"
        navigationController?.navigationBar.prefersLargeTitles = true
        setView()
        
    }
    
    
    
    func setView(){
//        backTab.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(backTab)
//        backTab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        backTab.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
//        backTab.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
//        backTab.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        backTab.backgroundColor = .systemGray6
//        backTab.clipsToBounds = true
//        backTab.layer.cornerRadius = 15
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(HeaderHome.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.estimatedSectionHeaderHeight = 100
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "header2")
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        
    }
    
    
}

extension AccountViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0{
            let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
            header?.contentView.backgroundColor = .white
            return header
        }
        else{
            let header  = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header2")
            return header
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section != 0 {
            return arr[section].name
        }
        return ""
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.img1.image = UIImage(systemName: arr[indexPath.section].list[indexPath.row].img)
        cell.img1.tintColor = .black
        cell.label.text = arr[indexPath.section].list[indexPath.row].label
        cell.selectionStyle = .none
        return cell
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ProfilItemsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
