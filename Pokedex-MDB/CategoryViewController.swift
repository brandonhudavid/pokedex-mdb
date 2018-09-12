//
//  CategorySelectViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class CategorySelectViewController: UIViewController {

    var typeButton : UIButton!
    var pointsButton : UIButton!
    
    var constants = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createTypeButton()
        createPointButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    private func createTypeButton() {
        typeButton = UIButton(type: .custom) as UIButton
        typeButton.frame = CGRect(x: 0, y: 0, width: CGFloat(constants.roundWidthHeight), height: CGFloat(constants.roundWidthHeight))
        
        typeButton.layer.cornerRadius = CGFloat(constants.roundWidthHeight / 2)
        typeButton.layer.backgroundColor = constants.lightOrange.cgColor
        typeButton.layer.borderWidth = 2.0
        
        typeButton.addTarget(self, action: #selector(typesClicked), for: .touchUpInside)
        typeButton.clipsToBounds = true
        
        view.addSubview(typeButton)
    }
    
    private func createPointButton() {
        pointsButton = UIButton(type: .custom) as UIButton
        pointsButton.frame = CGRect(x: 0, y: 0, width: CGFloat(constants.roundWidthHeight), height: CGFloat(constants.roundWidthHeight))
        pointsButton.layer.cornerRadius = CGFloat(constants.roundWidthHeight / 2)
        pointsButton.layer.backgroundColor = constants.lightOrange.cgColor
        pointsButton.layer.borderWidth = 2.0
        
        pointsButton.addTarget(self, action: #selector(pointsClicked), for: .touchUpInside)
        pointsButton.clipsToBounds = true
        
        view.addSubview(pointsButton)
    }
    
    @objc func pointsClicked()
    {
        performSegue(withIdentifier: "toPoints", sender: self)
    }
    
    @objc func typesClicked()
    {
        performSegue(withIdentifier: "toTypes", sender: self)
    }
}
