//
//  MessageViewController.swift
//  Kavsar project
//
//  Created by mac on 14/02/23.
//

import UIKit

class MessageViewController: UIViewController {

    
    let search = UISearchController()
    let tableView = UITableView()
    let arr: [MenuMessage] = [
        MenuMessage(img: "per1", label1: "James", label2: "salom qalaysiz"),
        MenuMessage(img: "per2", label1: "Anvar", label2: "buyurtmangiz yo'lga chiqdi"),
        MenuMessage(img: "per3", label1: "GoodPhone", label2: "Rangini tanlang"),
        MenuMessage(img: "per4", label1: "Sobir", label2: "to'lvni amalga oshirlingan chekni"),
        MenuMessage(img: "per5", label1: "AvalonCenter", label2: "yangiliklar va aksiyalar ro'yxati"),
        MenuMessage(img: "per6", label1: "Abror", label2: "jsdncvs s so nsd sd sd dsj nsdln"),
        MenuMessage(img: "per7", label1: "globalClothes", label2: "sfvsbv s vh vfvbdfbvbf"),
        MenuMessage(img: "per8", label1: "Foods", label2: "dsvnbvsv jnfjnvjfn bdjhbthouheh")
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Messages"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(add))
        navigationItem.searchController = search
        table()

    }
    
    @objc func add(){
        print("hello")
    }
    
    func table(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.top(view.topAnchor, 0)
        tableView.left(view.leftAnchor, 0)
        tableView.right(view.rightAnchor, 0)
        tableView.bottom(view.bottomAnchor, 0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MessageTableViewCell.self, forCellReuseIdentifier: "cell")
    }


}

extension MessageViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MessageTableViewCell
        cell.img.image = UIImage(named: arr[indexPath.row].img)
        cell.label1.text = arr[indexPath.row].label1
        cell.label2.text = arr[indexPath.row].label2
        return cell
        
    }
}
