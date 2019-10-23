//
//  PokemonCollectionCell.swift
//  Pokedex
//
//  Created by Adam Ash on 3/22/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

class PokemonCollectionCell: UICollectionViewCell {
    var nameLabel: UILabel?
    var picture: UIImageView?
    var beenSet = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .white
    }
    
    func setLabel(labelText: String, number: Int) {
        beenSet = true
        nameLabel = UILabel(frame: CGRect(x: 0, y: contentView.frame.height*80/100, width: contentView.frame.width, height: contentView.frame.height*20/100))
        nameLabel?.textAlignment = .left
        nameLabel!.text = "#\(number.description) \(labelText)"
        contentView.addSubview(nameLabel!)
    }
    
    func setPicture(website: URL) {
        picture = UIImageView(frame: CGRect(x: 0, y:0, width: contentView.frame.height, height: contentView.frame.height))
        picture!.load(url: website)
        picture!.contentMode = .scaleAspectFit
        picture!.clipsToBounds = true
        contentView.addSubview(picture!)
    }
    
}
