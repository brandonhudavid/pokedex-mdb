//
//  PokemonSearchViewController.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class PokemonSearchViewController: UIViewController {
    
    
    var headerLabel: UILabel!
    var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeHeader()
        initializeSearchBar()
        // Do any additional setup after loading the view.
    }
    
    func initializeHeader() {
        headerLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 100))
        headerLabel.center = CGPoint.init(x: view.frame.width / 2, y: 100)
        headerLabel.text = "Enter a Pokemon name or #."
        headerLabel.textAlignment = .center
        self.view.addSubview(headerLabel)
    }
    
    func initializeSearchBar() {
        searchBar = UISearchBar.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width - 100, height: 50))
        searchBar.center = CGPoint.init(x: view.frame.width / 2, y: 150)
        searchBar.barStyle = .default
        self.view.addSubview(searchBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
