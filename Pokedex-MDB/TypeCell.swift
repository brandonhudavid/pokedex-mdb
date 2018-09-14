//
//  TypeCellTableViewCell.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/13/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class TypeCell: UICollectionViewCell {
    
    var typeImage: UIImageView!
    var typeLabel: UILabel!
    
    override func awakeFromNib() {
        typeImage = UIImageView(frame: contentView.frame)
        typeImage.contentMode = .scaleAspectFill
        typeImage.clipsToBounds = true
        contentView.addSubview(typeImage)
        
        typeLabel = UILabel(frame: contentView.frame)
         contentView.addSubview(typeLabel)
    }
}
