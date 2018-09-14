////
////  PokemonSearchViewController-TableView.swift
////  Pokedex-MDB
////
////  Created by Brandon David on 9/11/18.
////  Copyright © 2018 Brandon David. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//extension PokemonSearchViewController {
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // return size of pokemon array
//        return 10
//    }
//
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 75
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell") as? PokemonCell {
//            cell.addName()
//            cell.addNumber()
//            cell.pokemonName.text = "access name via indexPath"
//            cell.pokemonNumber.text = "access ### via indexPath"
////            cell.pokemonImage.image = nil
//            return cell
//        } else {
//            return UITableViewCell()
//        }
//    }
//}
