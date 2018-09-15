//
//  PokemonRandomization.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/14/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class PokemonRandomization {

    var allPokemon: [Pokemon] = PokemonGenerator.getPokemonArray()
    var randomTwenty : [Pokemon]!

    var randomIndex : Int = 0
    
    func createRandomizedNames()
    {
        randomIndex = Int(arc4random_uniform(UInt32(allPokemon.count)))
        randomTwenty.append(allPokemon[randomIndex])
    }
    
    func returnRandomizedNames() -> [Pokemon]
    {
        return randomTwenty
    }
    
    func resetArray()
    {
        allPokemon.removeAll()
    }
}
