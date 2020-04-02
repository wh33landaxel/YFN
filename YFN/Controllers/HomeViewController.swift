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
        
        
        let calendarVC = CalendarViewController()
        calendarVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        let artistVC = ArtistViewController()
        artistVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let tipsVC = TipsViewController()
        tipsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        
        
        let viewControllerList = [calendarVC, artistVC, tipsVC]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
