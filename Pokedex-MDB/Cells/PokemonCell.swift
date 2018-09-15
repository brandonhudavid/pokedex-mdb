//
//  PokemonTableViewCell.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    var pokemonName: UILabel!
    var pokemonNumber: UILabel!
    var pokemonImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func addName() {
        pokemonName = UILabel.init(frame: CGRect.init(x: 100, y: 10, width: self.frame.width, height: 25))
        self.addSubview(pokemonName)
    }
    
    func addNumber() {
        pokemonNumber = UILabel.init(frame: CGRect.init(x: 100, y: 35, width: self.frame.width, height: 25))
        pokemonNumber.font = UIFont.italicSystemFont(ofSize: 12.0)
        self.addSubview(pokemonNumber)
    }
    
    func addImageView() {
        pokemonImage = UIImageView.init(frame: CGRect.init(x: 5, y: 5, width: 75, height: 75))
        pokemonImage.contentMode = .scaleAspectFit
        self.addSubview(pokemonImage)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
