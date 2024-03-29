//
//  Pokemon.swift
//  Pokedex
//
//  Created by SAMEER SURESH on 9/25/16.
//  Copyright © 2016 trainingprogram. All rights reserved.
//

import Foundation

class Pokemon {
    /* 
       There are 18 different types of Pokemon, and a single Pokemon can inherit multiple types:
            Bug, Grass, Dark, Ground, Dragon, Ice, Electric, Normal, Fairy,
            Poison, Fighting, Psychic, Fire, Rock, Flying, Steel, Ghost, Water
    */
    
   

 
 
    let name: String!
    let number: Int!
    let attack: Int!
    let defense: Int!
    let health: Int!
    let specialAttack: Int!
    let specialDefense: Int!
    let species: String!
    let speed: Int!
    let total: Int!
    let types: [String]
    let imageUrl: String!
    let stats: [Int]!
    let statNames = ["Attack", "Defense", "Health", "Special Attack", "Special Defense", "Total"]
    
    init(name: String, number: Int, attack: Int, defense: Int, health: Int, spAttack: Int, spDef: Int, species: String, speed: Int, total: Int, types: [String]) {
        self.name = name
        self.number = number
        self.attack = attack
        self.defense = defense
        self.health = health
        self.specialAttack = spAttack
        self.specialDefense = spDef
        self.species = species
        self.speed = speed
        self.total = total
        self.types = types
        self.imageUrl = "http://img.pokemondb.net/artwork/\(name.components(separatedBy: " ")[0].lowercased()).jpg"
        self.stats = [self.attack, self.defense, self.health, self.specialAttack, self.specialDefense, self.total]
    }
    
}
