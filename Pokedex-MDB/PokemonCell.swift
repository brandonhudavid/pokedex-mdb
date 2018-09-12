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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
