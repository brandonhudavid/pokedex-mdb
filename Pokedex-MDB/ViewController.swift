//
//  ViewController.swift
//  Pokedex-MDB
//
//  Created by Brandon David on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titleLabel : UILabel!
    var searchLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createTitleLabel()
        createSearchLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Load game title
    private func createTitleLabel()
    {
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        titleLabel.text = "Pokedex"
        titleLabel.font = UIFont(name: "AmericanTypewriter", size: 50.0)
        titleLabel.textAlignment = .center
        titleLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height - 450)
        view.addSubview(titleLabel)
    }
    
    private func createSearchLabel()
    {
        searchLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        searchLabel.text = "Search By"
        searchLabel.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        searchLabel.textAlignment = .center
        searchLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height - 350)
        view.addSubview(searchLabel)
    }
}

