//
//  ResultsCollectionViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/14/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

extension ResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "resultsCell", for: indexPath) as? ResultCell {
            
            for subview in cell.contentView.subviews {
                subview.removeFromSuperview()
            }
            
            cell.awakeFromNib()
            
            cell.resultName.text = searchResults[indexPath.row].name!
            if let url = URL(string: searchResults[indexPath.row].imageUrl!) {
                if let data = try? Data(contentsOf: url) {
                    cell.resultImage.image = UIImage(data: data)
                }
            } else if let data = try? Data(contentsOf: URL(string: "https://upload.wikimedia.org/wikipedia/en/3/39/Pokeball.PNG")!) {
                cell.resultImage.image = UIImage(data: data)
            }
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
}
