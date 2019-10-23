//
//  TabBarController.swift
//  Pokedex
//
//  Created by Adam Ash on 3/25/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?[0].title = "Pokedex"
        tabBar.items?[1].title = "Favorites"
    }
    
    
}
