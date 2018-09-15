//
//  ResultCell.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/14/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class ResultCell: UICollectionViewCell {
    
    var resultImage: UIImageView!
    var resultName: UILabel!
    var resultCell: UIButton!
    
    override func awakeFromNib() {
        resultImage = UIImageView(frame: CGRect(x: contentView.frame.width * 0.125, y: 0, width: contentView.frame.width * 0.75, height: contentView.frame.height * 0.75))
        resultImage.contentMode = .scaleAspectFit
        resultImage.clipsToBounds = true
        resultImage.alpha = 1.0
        contentView.addSubview(resultImage)
        
        resultName = UILabel(frame: CGRect(x: 0, y: contentView.frame.height * 0.8, width: contentView.frame.width, height: contentView.frame.height * 0.2))
        resultName.clipsToBounds = true
        resultName.textAlignment = .center
        resultName.textColor = .black
        resultName.backgroundColor = .clear
        resultName.font = UIFont(name: "AmericanTypewriter", size: 12.0)
        contentView.addSubview(resultName)
        
        resultCell = UIButton(frame: CGRect(x: 0, y: 0, width: contentView.frame.width-50, height: contentView.frame.height-50))
        resultCell.sizeToFit()
        contentView.addSubview(resultCell)
    }
    
}
