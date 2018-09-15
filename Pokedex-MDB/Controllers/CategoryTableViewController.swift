//
//  CategoryTableViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/13/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

extension CategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (Constants.pokemonTypes.count)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "typeCell", for: indexPath) as? TypeCell {
            
            for subview in cell.contentView.subviews {
                subview.removeFromSuperview()
            }
            
            cell.awakeFromNib()

            cell.typeLabel.text = Constants.pokemonTypes[indexPath.row]
            cell.typeImage.image = UIImage(named: Constants.pokemonTypes[indexPath.row])
            
            return cell
        } else {
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // addToList.append(objectsArray[indexPath.row])
        let typeCell = collectionView.cellForItem(at: indexPath) as! TypeCell
        
        let type = Constants.pokemonTypes[indexPath.row]
        
        typeCell.toggleSelected()
        
        if typeCell.pressed {
            debugPrint(type)
            selectedTypes.append(type)
        } else {
            debugPrint(type)
            selectedTypes.remove(at: selectedTypes.index(of: type)!)
        }
        
        debugPrint("Array: ", selectedTypes!)
        
    }

}
