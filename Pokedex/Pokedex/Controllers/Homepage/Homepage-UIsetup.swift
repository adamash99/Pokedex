//
//  Homepage-UIsetup.swift
//  Pokedex
//
//  Created by Adam Ash on 3/20/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

extension HomepageViewController {

    func makeRandomButton() {
        randomButton = UIButton(frame: CGRect(x: view.frame.width*10/100, y: view.frame.height*20/100, width: view.frame.width*50/100, height: view.frame.height*10/100))
        randomButton.setTitle("20 Random", for: .normal)
        randomButton.backgroundColor = .cyan
        randomButton.addTarget(self, action: #selector(randomClicked), for: .touchUpInside)
        view.addSubview(randomButton)
    }
    
    func makeNavigationBar() {
    }
    
    func makeSearchField() {
        searchField = UITextField(frame: CGRect(x: view.frame.width*1/100, y: view.frame.width*25/100, width: view.frame.width*40/100, height: view.frame.height*6/100))
        searchField.font = UIFont(name: "Arial", size: 13)
        searchField.placeholder = "Search Pokemon"
        searchField.borderStyle = .roundedRect
        searchField.delegate = self
        searchField.returnKeyType = .go
        //searchField.addTarget(self, action: #selector(searchForSpecific), for: .all)
        view.addSubview(searchField)
    }
    
    func makeSearchButton() {
        searchButton = UIButton(frame: CGRect(x: view.frame.width*20/100, y: view.frame.height*60/100, width: view.frame.width*60/100, height: view.frame.height*10/100))
        searchButton.setTitle("Search By Category", for: .normal)
        searchButton.backgroundColor = .cyan
        searchButton.addTarget(self, action: #selector(searchClicked), for: .touchUpInside)
        view.addSubview(searchButton)
        
    }
}
