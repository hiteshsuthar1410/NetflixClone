//
//  ViewController.swift
//  Netflix clone
//
//  Created by Hitesh Suthar on 27/07/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        
        /// Create instances of navigation controllers defining their rootviewcontrollers
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        
        /// NavigationController instances have tabBarItem property because it it also a viewcontroller, use it to assign image
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        vc1.title = "Home" ///_ By default tab bar title would be the title of the assigned view controller (navigation controller in our case)
        vc2.title = "Coming soon"
        vc3.title = "Top Searches"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label ///_ To change the selection color of item we apply color on tabBar neither on view nor on tabBarItem
        
         
        ///_ Custom title to tabBar:
//         vc1.tabBarItem.title = "Custom title"
         
        ///_ We can also create a system provided UIITabBarItem by creating instance of it and assign it to tabBarItem property of vc:
//        let systemTabBarApperance = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
//        let item = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
//        vc1.tabBarItem = item
         
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true) ///_ Make sure call it only inside viewDidLoad
    }

}

