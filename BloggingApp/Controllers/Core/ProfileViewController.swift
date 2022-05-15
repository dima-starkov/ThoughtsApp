//
//  ProfileViewController.swift
//  BloggingApp
//
//  Created by Дмитрий Старков on 15.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        createSigOutButton()
    }
    
    private func createSigOutButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(
                image: UIImage(systemName: "rectangle.portrait.and.arrow.right"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSignOut))
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    @objc private func didTapSignOut() {
        print("out in this app")
    }
}
