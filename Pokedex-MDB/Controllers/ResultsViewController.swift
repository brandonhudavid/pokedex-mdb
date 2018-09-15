//
//  ResultsViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/14/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    let allPokemon: [Pokemon] = PokemonGenerator.getPokemonArray()
    var searchResults : [Pokemon]!
    
    var pokemonCollection : UICollectionView!

    var attackMinimum : Int = 0
    var defenseMinimum : Int = 0
    var healthMinimum : Int = 0
    
    var selectedTypes : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        findPokemon(minAttack: attackMinimum, minDefense: defenseMinimum, minHealth: healthMinimum, types: selectedTypes)
        debugPrint(allPokemon)
        debugPrint("Search", searchResults)
        createTypes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func createTypes()
    {
        let layout = UICollectionViewFlowLayout()
        
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: view.frame.width / 4, height: view.frame.width / 4)
        
        pokemonCollection = UICollectionView(frame: CGRect(x: 20, y: 120, width: view.frame.width - 40, height: view.frame.height / 2 - 25), collectionViewLayout: layout)
        pokemonCollection.register(ResultCell.self, forCellWithReuseIdentifier: "resultCell")
        pokemonCollection.backgroundColor = Constants.white
        
        pokemonCollection.showsVerticalScrollIndicator = true
        pokemonCollection.allowsMultipleSelection = true
        
        pokemonCollection.delegate = self
        pokemonCollection.dataSource = self
        
        view.addSubview(pokemonCollection)
    }
    
    func findPokemon(minAttack: Int, minDefense: Int, minHealth: Int, types: [String]) -> [Pokemon]? {
        for pokemon in allPokemon {
            if pokemon.attack >= minAttack && pokemon.defense >= minDefense && pokemon.health >= minHealth && analyzeTypes(types1: types, types2: pokemon.types) {
                searchResults?.append(pokemon)
            }
        }
        
        return searchResults
    }
    
    func analyzeTypes(types1: [String], types2: [String]) -> Bool {
        if types1.count != types2.count {
            return false
        }
        
        for ty1 in types1 {
            var identical = false
            
            for ty2 in types2 {
                if ty1 == ty2 {
                    identical = true
                }
            }
            
            if !identical {
                return false
            }
        }
        return true
    }

}

extension ResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "resultsCell", for: indexPath) as? ResultCell {
            
            for subview in cell.contentView.subviews {
                subview.removeFromSuperview()
            }
            
            cell.awakeFromNib()
            
            cell.resultName.text = searchResults[indexPath.row].name!
            cell.resultImage.image = UIImage(named: searchResults[indexPath.row].imageUrl)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
}
