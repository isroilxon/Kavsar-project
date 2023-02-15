//
//  AppDelegate.swift
//  Kavsar project
//
//  Created by mac on 14/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = TabBarViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}
