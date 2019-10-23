//
//  searchButtonDelegate.swift
//  Pokedex
//
//  Created by Adam Ash on 3/24/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit

extension SearchViewController : UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_: UITextField) -> Bool {
        bugButton.isEnabled = false
        darkButton.isEnabled = false
        dragonButton.isEnabled = false
        electricButton.isEnabled = false
        fairyButton.isEnabled = false
        fightingButton.isEnabled = true
        return true
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        bugButton.isEnabled = true
        darkButton.isEnabled = true
        dragonButton.isEnabled = true
        electricButton.isEnabled = true
        fairyButton.isEnabled = true
        fightingButton.isEnabled = true
        super.touchesBegan(touches, with: event)
    }
    
}
