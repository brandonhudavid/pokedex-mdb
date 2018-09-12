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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeButtons()
//        self.navigationController?.view.backgroundColor = .white
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func initializeButtons() {
        pokemonButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        pokemonButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2)
        pokemonButton.backgroundColor = .black
        pokemonButton.setTitle("Pokemon", for: .normal)
        pokemonButton.addTarget(self, action: #selector(segueToPokemonSearchVC), for: .touchUpInside)
        self.view.addSubview(pokemonButton)
        
        categoryButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        categoryButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2 + 100)
        categoryButton.backgroundColor = .black
        categoryButton.setTitle("Category", for: .normal)
        self.view.addSubview(categoryButton)
        
        randomButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        randomButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 2 + 200)
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

