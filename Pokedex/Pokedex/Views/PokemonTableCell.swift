//
//  RandomCell.swift
//  Pokedex
//
//  Created by Adam Ash on 3/20/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

class PokemonTableCell : UITableViewCell {
    var nameLabel: UILabel?
    var pictureFrame: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func makeLabel(labelText: String, number: Int) {
        nameLabel = UILabel(frame: CGRect(x: contentView.frame.width*20/100, y: 0, width: contentView.frame.width*100/100, height: contentView.frame.height))
        nameLabel?.textAlignment = .left
        nameLabel!.text = "#" + number.description + " " + labelText
        contentView.addSubview(nameLabel!)
    }
    
    func makePictureFrame(website: URL) {
        pictureFrame = UIImageView(frame: CGRect(x: contentView.frame.width*3/100, y:0, width: contentView.frame.height, height: contentView.frame.height))
        pictureFrame!.load(url: website)
        pictureFrame!.contentMode = .scaleAspectFit
        pictureFrame!.clipsToBounds = true
        contentView.addSubview(pictureFrame!)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
