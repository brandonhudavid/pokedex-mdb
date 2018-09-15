//
//  ProfileViewController.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/13/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var pokemonName: String!
    var pokemonNumber: String!
    var pokemonImage: UIImage!
    var pokemonImageView: UIImageView!
    var pokemonNameLabel: UILabel!
    var pokemonNumberLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 2, height: view.frame.height / 2))
        pokemonImageView.center = CGPoint.init(x: 100, y: 100)
        pokemonImageView.image = pokemonImage
        self.view.addSubview(pokemonImageView)
        
        pokemonNameLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 100))
        pokemonNameLabel.center = CGPoint.init(x: 100, y: 175)
        pokemonNameLabel.text = pokemonName
        pokemonNameLabel.textAlignment = .center
        self.view.addSubview(pokemonNameLabel)
        
        pokemonNumberLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: 100))
        pokemonNumberLabel.center = CGPoint.init(x: 100, y: 250)
        pokemonNumberLabel.text = pokemonNumber
        pokemonNumberLabel.textAlignment = .center
        self.view.addSubview(pokemonNumberLabel)

        // Do any additional setup after loading the view.
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
