//
//  AppDelegate.swift
//  staticCells
//
//  Created by Иван Лукъянычев on 06.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let navVC = UINavigationController(rootViewController: TableViewController())
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        return true
    }

   
}

