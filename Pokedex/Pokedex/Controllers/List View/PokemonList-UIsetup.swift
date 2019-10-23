//
//  Random20-UIsetup.swift
//  Pokedex
//
//  Created by Adam Ash on 3/20/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import UIKit

extension PokemonListViewController {
    
    func makeTable() {
        //var _: CGFloat = self.navigationController!.navigationBar.frame.maxY
        pokemonTable = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        pokemonTable.register(PokemonTableCell.self, forCellReuseIdentifier: "Randoms")
        pokemonTable.delegate = self
        pokemonTable.dataSource = self
        view.addSubview(pokemonTable)
    }
    
    func makeCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.width*1/3, height: view.frame.width/3)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        pokemonCollection = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        pokemonCollection.register(PokemonCollectionCell.self, forCellWithReuseIdentifier: "pokemonCell")
        pokemonCollection.delegate = self
        pokemonCollection.dataSource = self
        pokemonCollection.backgroundColor = .white
        view.addSubview(pokemonCollection)
    }
    
    func makeNavigationBar() {
        self.navigationItem.title = "Pokemon"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Table", style: .plain, target: self, action: #selector(viewSwitch))
    }
    
}
