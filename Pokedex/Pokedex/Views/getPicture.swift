//
//  getPicture.swift
//  Pokedex
//
//  Created by Adam Ash on 3/22/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

// from https://www.hackingwithswift.com/example-code/uikit/how-to-load-a-remote-image-url-into-uiimageview

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
