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
    var typeCell: UIButton!
    
    var pressed = false
    
    override func awakeFromNib() {
        typeImage = UIImageView(frame: CGRect(x: contentView.frame.width * 0.125, y: 0, width: contentView.frame.width * 0.75, height: contentView.frame.height * 0.75))
        typeImage.contentMode = .scaleAspectFit
        typeImage.clipsToBounds = true
        contentView.addSubview(typeImage)
        
        typeLabel = UILabel(frame: CGRect(x: 0, y: contentView.frame.height * 0.8, width: contentView.frame.width, height: contentView.frame.height * 0.2))
        typeLabel.clipsToBounds = true
        typeLabel.textAlignment = .center
        typeLabel.textColor = .black
        typeLabel.backgroundColor = .clear
        typeLabel.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        contentView.addSubview(typeLabel)
        
        typeCell = UIButton(frame: CGRect(x: 0, y: 0, width: contentView.frame.width-50, height: contentView.frame.height-50))
        typeCell.sizeToFit()
        contentView.addSubview(typeCell)
    }
    
    func toggleSelected() {
        debugPrint(pressed)
        pressed = !pressed
        if pressed {
            self.alpha = 1.0
            // typeImage.alpha = 1.0
        } else {
            self.alpha = 0.5
            // typeImage.alpha = 0.5
        }
    }
}
