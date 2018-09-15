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
    var mySegmentedControl : UISegmentedControl!

    var attackMinimum : Int = 0
    var defenseMinimum : Int = 0
    var healthMinimum : Int = 0
    
    var selectedTypes : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        findPokemon(minAttack: attackMinimum, minDefense: defenseMinimum, minHealth: healthMinimum, types: selectedTypes)
        createTypes()
        switchViews()
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
        layout.itemSize = CGSize(width: view.frame.width / 5, height: view.frame.width / 5)
        
        pokemonCollection = UICollectionView(frame: CGRect(x: 20, y: 120, width: view.frame.width - 40, height: view.frame.height - 150), collectionViewLayout: layout)
        pokemonCollection.register(ResultCell.self, forCellWithReuseIdentifier: "resultsCell")
        pokemonCollection.backgroundColor = Constants.white
        pokemonCollection.showsVerticalScrollIndicator = true
        pokemonCollection.allowsMultipleSelection = true
        
        pokemonCollection.delegate = self
        pokemonCollection.dataSource = self
        
        view.addSubview(pokemonCollection)
    }
    
    func findPokemon(minAttack: Int, minDefense: Int, minHealth: Int, types: [String]) -> [Pokemon]? {
        searchResults = []
        for pokemon in allPokemon {
            if pokemon.attack >= minAttack && pokemon.defense >= minDefense && pokemon.health >= minHealth && analyzeTypes(selectedTypes, pokemon.types) {
                searchResults?.append(pokemon)
            }
        }
        
        return searchResults
    }
    
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
    
    func switchViews()
    {
        mySegmentedControl = UISegmentedControl(items: ["Grid", "Table"])
        let elementWidth : CGFloat = view.frame.width - 600
        let elementHeight : CGFloat = 30
        
        mySegmentedControl.frame = CGRect(x: 0, y: 0, width: elementWidth, height: elementHeight)
        mySegmentedControl.center = CGPoint(x: CGFloat(view.frame.width / 2), y: CGFloat(100))
        
        mySegmentedControl.selectedSegmentIndex = 1
        mySegmentedControl.tintColor = Constants.darkGrey
        mySegmentedControl.backgroundColor = Constants.silver
        mySegmentedControl.addTarget(self, action: #selector(segmentedValueChanged(_:)), for: .valueChanged)
        self.view.addSubview(mySegmentedControl)
    }
    
    @objc func segmentedValueChanged(_ sender : UISegmentedControl!)
    {
        
    }

}
