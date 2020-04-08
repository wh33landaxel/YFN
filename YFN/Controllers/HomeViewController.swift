//
//  HomeViewController.swift
//  YFN
//
//  Created by Axel Nunez on 4/2/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit

class HomeViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarControls()
    }
    
    func setupTabBarControls() {
        
        let calendarVC = CalendarViewController()
        calendarVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        calendarVC.tabBarItem = UITabBarItem(title: "Calendar", image: UIImage(named: "Calendar"), tag: 0)
        let artistVC = ArtistViewController()
        artistVC.tabBarItem = UITabBarItem(title: "Recent Artists", image: UIImage(named: "Artist"), tag: 1)
        let tipsVC = TipsViewController()
        tipsVC.tabBarItem = UITabBarItem(title: "Tips & Tricks", image: UIImage(named: "Tips"), tag: 2)
        
        let viewControllerList = [calendarVC, artistVC, tipsVC]
        
        viewControllers = viewControllerList.map {
                  UINavigationController(rootViewController: $0)
        }
        
    }
}
