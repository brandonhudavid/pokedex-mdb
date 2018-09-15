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
    var pokemonAttack: Int!
    var pokemonDefense: Int!
    var pokemonHealth: Int!
    var pokemonSpAtt: Int!
    var pokemonSpDef: Int!
    var statNames: [String]!
    var pokemonStatArray: [Int]!
    
    var pokemonImageView: UIImageView!
    var pokemonNameLabel: UILabel!
    var pokemonNumberLabel: UILabel!
    var pokemonStatsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statNames = ["Attack", "Defense", "Health", "Special Attack", "Special Defense"]
        pokemonStatArray = [pokemonAttack, pokemonDefense, pokemonHealth, pokemonSpAtt, pokemonSpDef]
        
        pokemonImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: view.frame.height / 3))
        pokemonImageView.center = CGPoint.init(x: 100, y: 150)
        pokemonImageView.image = pokemonImage
        pokemonImageView.contentMode = .scaleAspectFit
        self.view.addSubview(pokemonImageView)
        
        pokemonNameLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 2, height: 100))
        pokemonNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        pokemonNameLabel.center = CGPoint.init(x: view.frame.width / 2 + 100, y: 125)
        pokemonNameLabel.text = pokemonName
        pokemonNameLabel.textAlignment = .left
        pokemonNameLabel.numberOfLines = 2
        self.view.addSubview(pokemonNameLabel)
        
        pokemonNumberLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 2, height: 100))
        pokemonNumberLabel.center = CGPoint.init(x: view.frame.width / 2 + 100, y: 175)
        pokemonNumberLabel.text = pokemonNumber
        pokemonNumberLabel.textAlignment = .left
        self.view.addSubview(pokemonNumberLabel)
        
        pokemonStatsLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 2, height: 2 * view.frame.height / 3))
        pokemonStatsLabel.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height / 3 + 100)
        pokemonStatsLabel.textAlignment = .left
        pokemonStatsLabel.numberOfLines = statNames.count + 1
        pokemonStatsLabel.text = ""
        for index in 0..<statNames.count {
            pokemonStatsLabel.text = pokemonStatsLabel.text! + "\(statNames[index]):   \(pokemonStatArray[index])\n"
        }
        self.view.addSubview(pokemonStatsLabel)

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
