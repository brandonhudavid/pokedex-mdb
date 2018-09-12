//
//  ViewController.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var pokemonButton: UIButton!
    var categoryButton: UIButton!
    var randomButton: UIButton!
    var titleLabel : UILabel!
    var searchLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTitleLabel()
        createSearchLabel()
        initializeButtons()
//        self.navigationController?.view.backgroundColor = .white
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Load game title
    private func createTitleLabel()
    {
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        titleLabel.text = "Pokedex"
        titleLabel.font = UIFont(name: "AmericanTypewriter", size: 50.0)
        titleLabel.textAlignment = .center
        titleLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height - 450)
        view.addSubview(titleLabel)
    }
    
    private func createSearchLabel()
    {
        searchLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        searchLabel.text = "Search By"
        searchLabel.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        searchLabel.textAlignment = .center
        searchLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height - 350)
        view.addSubview(searchLabel)
    }
    
    func initializeButtons() {
        pokemonButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        pokemonButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2 + 70)
        pokemonButton.backgroundColor = .black
        pokemonButton.setTitle("Pokemon", for: .normal)
        pokemonButton.addTarget(self, action: #selector(segueToPokemonSearchVC), for: .touchUpInside)
        self.view.addSubview(pokemonButton)
        
        categoryButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        categoryButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2 + 130)
        categoryButton.backgroundColor = .black
        categoryButton.setTitle("Category", for: .normal)
        self.view.addSubview(categoryButton)
        
        randomButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        randomButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2 + 190)
        randomButton.backgroundColor = .black
        randomButton.setTitle("Randomize!", for: .normal)
        self.view.addSubview(randomButton)
    }
    
    @objc func segueToPokemonSearchVC() {
        performSegue(withIdentifier: "toPokemonSearchVC", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

