//
//  TabBarViewController.swift
//  BloggingApp
//
//  Created by Дмитрий Старков on 15.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .white
        setupControllers()
    }
    
    private func setupControllers() {
        setViewControllers([
            createNavVC(viewController: HomeViewController(),
                        title: "Home",
                        imageSystemName: "house",
                        tag: 1),
            createNavVC(viewController: ProfileViewController(),
                        title: "Profile",
                        imageSystemName: "person.circle",
                        tag: 2)
        ], animated: true)
    }

    
    private func createNavVC(viewController: UIViewController,
                             title: String,
                             imageSystemName: String,
                             tag: Int) -> UINavigationController {
        viewController.navigationItem.largeTitleDisplayMode = .always
        viewController.title = title
        let navVC = UINavigationController(rootViewController: viewController)
        let tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageSystemName), tag: tag)
        navVC.tabBarItem = tabBarItem
        navVC.navigationBar.prefersLargeTitles = true
        return navVC
    }
   
}
