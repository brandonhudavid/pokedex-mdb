//
//  CategoryTableCollectionViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/14/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    var searchResults : [Pokemon]!
    var allPokemon: [Pokemon] = PokemonGenerator.getPokemonArray()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = PokemonCell()
        
        cell.addName()
        cell.addNumber()
        cell.addImageView()
        
        // findPokemon(minAttack: <#T##Int#>, minDefense: <#T##Int#>, minHealth: <#T##Int#>, types: <#T##[String]#>)
        return UITableViewCell()
    }
    
    /*
    func findPokemon(minAttack: Int, minDefense: Int, minHealth: Int, types: [String]) -> [Pokemon]? {
        searchResults = []
        for pokemon in allPokemon {
            if pokemon.attack >= minAttack && pokemon.defense >= minDefense && pokemon.health >= minHealth && analyzeTypes(selectedTypes, pokemon.types) {
                searchResults?.append(pokemon)
            }
        }
        
        return searchResults
     }
     */
    
    func analyzeTypes(_ selectedTypes: [String], _ pokemonTypes: [String]) -> Bool {
        if selectedTypes.count == 0 {
            return true
        }
        for pokemonType in pokemonTypes {
            if selectedTypes.contains(pokemonType) {
                return true
            }
        }
        return false
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true) {
            print("dismissed")
        }

    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        
    }
}
