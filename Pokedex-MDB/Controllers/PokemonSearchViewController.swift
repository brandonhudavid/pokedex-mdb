//
//  PokemonSearchViewController.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import Foundation
import UIKit

class PokemonSearchViewController: UITableViewController, UISearchResultsUpdating {
    
    var pokemonKeyArray = [String]()
    var pokemonDictionary: [String : Pokemon] = [:]
    var filteredArray = [String]()
    
    var searchController = UISearchController()
    var resultController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for pokemon in PokemonGenerator.pokemonArray {
            pokemonKeyArray.append(pokemon.name)
            pokemonDictionary[pokemon.name] = pokemon
            var pokemonNumber = String(pokemon.number)
            while pokemonDictionary[pokemonNumber] != nil {
                pokemonNumber += " "
            }
            pokemonKeyArray.append(pokemonNumber)
            pokemonDictionary[pokemonNumber] = pokemon
        }
        
        self.searchController = UISearchController(searchResultsController: resultController)
        tableView.tableHeaderView = self.searchController.searchBar
        
        self.searchController.searchResultsUpdater = self
        self.resultController.tableView.delegate = self
        self.resultController.tableView.dataSource = self
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        self.filteredArray = pokemonKeyArray.filter({ (array: String) -> Bool in
            if array.contains(searchController.searchBar.text!) {
                return true
            } else {
                return false
            }
        })
        self.resultController.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.filteredArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = PokemonCell()
        cell.addName()
        cell.addNumber()
        cell.addImageView()
        if self.filteredArray.count > 0 {
            let pokemonKey = self.filteredArray[indexPath.row]
            cell.pokemonName.text = self.pokemonDictionary[pokemonKey]?.name
            cell.pokemonNumber.text = "# \((self.pokemonDictionary[pokemonKey]?.number)!)"
            if let url = URL(string: (self.pokemonDictionary[pokemonKey]?.imageUrl)!) {
                if let data = try? Data(contentsOf: url) {
                    cell.pokemonImage.image = UIImage(data: data)
                }
            } else if let data = try? Data(contentsOf: URL(string: "https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG")!) {
                cell.pokemonImage.image = UIImage(data: data)
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toProfileVC", sender: self)
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toProfileVC" {
//            let profileVC = segue.destination as! ProfileViewController
//            profileVC.pokemonName = self.pokemonDictionary[]
//        }
//    }

}
