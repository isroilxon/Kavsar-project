

import UIKit

class AccountViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            guard let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? HeaderHome else { return UITableViewHeaderFooterView() }
            return header
        }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
////        if section == 0 {
//                    let header  = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
//                    return header
//
////                }
////        else {
////                    let header  = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header2")
////                    return header
////
////                }
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr[section].list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.img1.image = UIImage(systemName: arr[indexPath.section].list[indexPath.row].img)
        cell.label.text = arr[indexPath.section].list[indexPath.row].label
                return cell
            
    }
    

    
    
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    let search = UIButton()
    let backTab = UIView()
    let arr:[Category] = [
    Category(name: "General", list: [
                                    Menu(img: "house", label: "Orders"),
                                    Menu(img: "house", label: "Product Reviews"),
                                    Menu(img: "house", label: "Favourites"),
                                    Menu(img: "house", label: "Favorite shops")
                                    ]),
    Category(name: "Settings", list: [
                                     Menu(img: "house", label: "Delivery adresses"),
                                     Menu(img: "house", label: "Saved cards")
    ])
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Setting"
        navigationController?.navigationBar.prefersLargeTitles = true
        setView()

    }
    

    
    func setView(){
        backTab.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backTab)
        backTab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        backTab.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        backTab.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        backTab.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backTab.backgroundColor = .systemGray6
        backTab.clipsToBounds = true
        backTab.layer.cornerRadius = 15
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        backTab.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: backTab.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: backTab.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: backTab.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: backTab.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(HeaderHome.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.estimatedSectionHeaderHeight = 100
//        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "header2")
        tableView.backgroundColor = .systemGray6
        tableView.showsVerticalScrollIndicator = false
    }
   

}
