//
//  Search-UIsetup.swift
//  Pokedex
//
//  Created by Adam Ash on 3/23/19.
//  Copyright © 2019 Adam Ash. All rights reserved.
//

import Foundation
import UIKit
//Bug, Grass, Dark, Ground, Dragon, Ice, Electric, Normal, Fairy,
//Poison, Fighting, Psychic, Fire, Rock, Flying, Steel, Ghost, Water

extension SearchViewController {
    
    func buttonHelper(button: UIButton, type: String) {
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.red.cgColor
        button.setTitle(type, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Arial", size: 20)
        button.addTarget(self, action: #selector(categoryClicked), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func statFieldsHelper(field: UITextField) {
        field.borderStyle = .roundedRect
        field.placeholder = "0"
        field.font = UIFont(name: "Arial", size: 20)
        field.textAlignment = .center
        field.keyboardType = .numberPad
        field.delegate = self
        view.addSubview(field)
    }
    
    
    func makeNavigationBar() {
        self.navigationItem.title = "Filter By Attribute"
    }
    
    func makeStatFields() {
        attackLabel = UILabel(frame: CGRect(x: view.frame.width*2/100, y: view.frame.height*20/100, width: view.frame.width*33/100, height: view.frame.height*4/100))
        attackLabel.text = "Minimum Attack:"
        attackLabel.textAlignment = .center
        view.addSubview(attackLabel)
        attackInput = UITextField(frame: CGRect(x: view.frame.width*35/100, y: view.frame.height*20/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: attackInput)
        
        defenseLabel = UILabel(frame: CGRect(x: view.frame.width*48/100, y: view.frame.height*20/100, width: view.frame.width*36/100, height: view.frame.height*4/100))
        defenseLabel.text = "Minimum Defense:"
        defenseLabel.textAlignment = .center
        view.addSubview(defenseLabel)
        defenseInput = UITextField(frame: CGRect(x: view.frame.width*85/100, y: view.frame.height*20/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: defenseInput)
        
        spAttackLabel = UILabel(frame: CGRect(x: view.frame.width*2/100, y: view.frame.height*26/100, width: view.frame.width*33/100, height: view.frame.height*4/100))
        spAttackLabel.text = "Min SP Attack:"
        spAttackLabel.textAlignment = .center
        view.addSubview(spAttackLabel)
        spAttackInput = UITextField(frame: CGRect(x: view.frame.width*35/100, y: view.frame.height*26/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: spAttackInput)
        
        spDefenseLabel = UILabel(frame: CGRect(x: view.frame.width*48/100, y: view.frame.height*26/100, width: view.frame.width*33/100, height: view.frame.height*4/100))
        spDefenseLabel.text = "Min SP Defense:"
        spDefenseLabel.textAlignment = .center
        view.addSubview(spDefenseLabel)
        spDefenseInput = UITextField(frame: CGRect(x: view.frame.width*85/100, y: view.frame.height*26/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: spDefenseInput)
        
        healthLabel = UILabel(frame: CGRect(x: view.frame.width*2/100, y: view.frame.height*32/100, width: view.frame.width*33/100, height: view.frame.height*4/100))
        healthLabel.text = "Minimum HP:"
        healthLabel.textAlignment = .center
        view.addSubview(healthLabel)
        healthInput = UITextField(frame: CGRect(x: view.frame.width*35/100, y: view.frame.height*32/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: healthInput)
        
        speedLabel = UILabel(frame: CGRect(x: view.frame.width*48/100, y: view.frame.height*32/100, width: view.frame.width*33/100, height: view.frame.height*4/100))
        speedLabel.text = "Minimum Speed:"
        speedLabel.textAlignment = .center
        view.addSubview(speedLabel)
        speedInput = UITextField(frame: CGRect(x: view.frame.width*85/100, y: view.frame.height*32/100, width: view.frame.width*12/100, height: view.frame.height*4/100))
        statFieldsHelper(field: speedInput)
    }
    
    
    func makeSearchButton() {
        searchButton = UIButton(frame: CGRect(x: view.frame.width*75/100, y: view.frame.height*10/100, width: view.frame.width*20/100, height: view.frame.height*6/100))
        searchButton.setTitle("Search->", for: .normal)
        searchButton.setTitleColor(.black, for: .normal)
        searchButton.layer.borderWidth = 2
        searchButton.layer.borderColor = UIColor.black.cgColor
        searchButton.addTarget(self, action: #selector(searchButtonClicked), for: .touchUpInside)
        view.addSubview(searchButton)
        
    }
    
    func makeTypeButtons() {
        bugButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*52/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        bugButton.backgroundColor = #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1)
        buttonHelper(button: bugButton, type: "Bug")
        
        darkButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*52/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        darkButton.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        buttonHelper(button: darkButton, type: "Dark")
        
        dragonButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*52/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        dragonButton.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        buttonHelper(button: dragonButton, type: "Dragon")
        
        electricButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*60/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        electricButton.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        buttonHelper(button: electricButton, type: "Electric")
        
        fairyButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*60/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        fairyButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        buttonHelper(button: fairyButton, type: "Fairy")
        
        fightingButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*60/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        fightingButton.backgroundColor = #colorLiteral(red: 0.5738074183, green: 0.5655357838, blue: 0, alpha: 1)
        buttonHelper(button: fightingButton, type: "Fighting")
        
        fireButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*68/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        fireButton.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        buttonHelper(button: fireButton, type: "Fire")
        
        flyingButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*68/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        flyingButton.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        buttonHelper(button: flyingButton, type: "Flying")
        
        ghostButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*68/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        ghostButton.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        buttonHelper(button: ghostButton, type: "Ghost")
        
        grassButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*76/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        grassButton.backgroundColor = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
        buttonHelper(button: grassButton, type: "Grass")
        
        groundButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*76/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        groundButton.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        buttonHelper(button: groundButton, type: "Ground")
        
        iceButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*76/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        iceButton.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        buttonHelper(button: iceButton, type: "Ice")
        
        normalButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*84/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        normalButton.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        buttonHelper(button: normalButton, type: "Normal")
        
        poisonButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*84/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        poisonButton.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
        buttonHelper(button: poisonButton, type: "Poison")
        
        psychicButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*84/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        psychicButton.backgroundColor = #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
        buttonHelper(button: psychicButton, type: "Psychic")
        
        rockButton = UIButton(frame: CGRect(x: view.frame.width*3/100, y: view.frame.height*92/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        rockButton.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        buttonHelper(button: rockButton, type: "Rock")
        
        steelButton = UIButton(frame: CGRect(x: view.frame.width*(6+29.3)/100, y: view.frame.height*92/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        steelButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        buttonHelper(button: steelButton, type: "Steel")
        
        waterButton = UIButton(frame: CGRect(x: view.frame.width*(9+2*29.3)/100, y: view.frame.height*92/100, width: view.frame.width*29.3/100, height: view.frame.height*6/100))
        waterButton.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        buttonHelper(button: waterButton, type: "Water")
    }
    
    
}
