

import UIKit

class TabBarViewController: UITabBarController {
    
    let tabHome = HomeViewController()
    let tabCateg = CategoryViewController()
    let tabMessag = MessageViewController()
    let tabShop = ShopcartViewController()
    let tabAcc = AccountViewController()
    let imgHome1 = UIImage(systemName: "house")
    let imgHome2 = UIImage(systemName: "house.fill")
    let imgCat1 = UIImage(systemName: "square.grid.2x2")
    let imgCat2 = UIImage(systemName: "square.grid.2x2.fill")
    let imgMess1 = UIImage(systemName: "message")
    let imgMess2 = UIImage(systemName: "message.fill")
    let imgShop1 = UIImage(systemName: "basket")
    let imgShop2 = UIImage(systemName: "basket.fill")
    let imgAcc1 = UIImage(systemName: "person")
    let imgAcc2 = UIImage(systemName: "person.fill")
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "tabbar"


        
        UITabBar.appearance().tintColor = UIColor.blue
                
        tabHome.tabBarItem = UITabBarItem(title: "Bosh Sahifa", image: imgHome1, selectedImage: imgHome2)
        tabCateg.tabBarItem = UITabBarItem(title: "Kategoriya", image: imgCat1, selectedImage: imgCat2)
        tabMessag.tabBarItem = UITabBarItem(title: "Xabarlar", image: imgMess1, selectedImage: imgMess2)
        tabShop.tabBarItem = UITabBarItem(title: "Savatcha", image: imgShop1, selectedImage: imgShop2)
        tabAcc.tabBarItem = UITabBarItem(title: "Profil", image: imgAcc1, selectedImage: imgAcc2)
        
        let viewControllerList = [tabHome, tabCateg,tabMessag,tabShop,tabAcc]
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
        tabBarController?.tabBar.delegate = self

    }


}
