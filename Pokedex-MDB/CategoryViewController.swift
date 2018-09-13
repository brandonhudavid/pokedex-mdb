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
    var pointButton : UIButton!
    var startButton : UIButton!
    
    var trophyImage : UIImage!
    var boxImage : UIImage!
    
    var typesLabel : UILabel!
    var pointsLabel : UILabel!
    var searchLabel : UILabel!
    
    var constants = Constants()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = constants.lightOrange

        createSearchLabel()
        createTypeButton()
        createPointButton()
        createTypesLabel()
        createPointsLabel()
    }
    
    private func createSearchLabel()
    {
        searchLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        searchLabel.text = "Search By"
        searchLabel.font = UIFont(name: "AmericanTypewriter", size: 35.0)
        searchLabel.textAlignment = .center
        searchLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height - 480)
        view.addSubview(searchLabel)
    }
    
    private func createTypeButton() {
        typeButton = UIButton(type: .custom) as UIButton
        typeButton.setTitle("Types", for: .normal)
        typeButton.titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 25.0)!
        typeButton.setTitleColor(constants.black, for: .normal)
        typeButton.backgroundColor = constants.white

        boxImage = UIImage(named: "types")
        typeButton.setImage(boxImage, for: .normal)
        
        typeButton.frame = CGRect(x: 0, y: 0, width: CGFloat(view.frame.width / 3), height: CGFloat(view.frame.width / 3))
        typeButton.center = CGPoint(x: view.frame.width / 4, y: view.frame.height - 350)
        typeButton.layer.cornerRadius = CGFloat(view.frame.width / 6)
        typeButton.layer.backgroundColor = constants.white.cgColor
        typeButton.clipsToBounds = true
        
        typeButton.addTarget(self, action: #selector(typesClicked), for: .touchUpInside)
        
        view.addSubview(typeButton)
    }
    
    private func createPointButton() {
        pointButton = UIButton(type: .custom) as UIButton
        pointButton.setTitle("Points", for: .normal)
        pointButton.titleLabel?.font = UIFont(name: "AmericanTypewriter", size: 25.0)!
        pointButton.setTitleColor(constants.black, for: .normal)
        pointButton.backgroundColor = constants.white
        
        trophyImage = UIImage(named: "points")
        pointButton.setImage(trophyImage, for: .normal)

        pointButton.frame = CGRect(x: 0, y: 0, width: CGFloat(view.frame.width / 3), height: CGFloat(view.frame.width / 3))
        pointButton.center = CGPoint(x: 3 * view.frame.width / 4, y: view.frame.height - 350)
        pointButton.layer.cornerRadius = CGFloat(view.frame.width / 6)
        pointButton.layer.backgroundColor = constants.white.cgColor
        pointButton.clipsToBounds = true

        pointButton.addTarget(self, action: #selector(pointsClicked), for: .touchUpInside)
        
        view.addSubview(pointButton)
    }
    
    private func createTypesLabel()
    {
        typesLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        typesLabel.text = "Types"
        typesLabel.font = UIFont(name: "AmericanTypewriter", size: 25.0)
        typesLabel.textAlignment = .center
        typesLabel.center = CGPoint(x: view.frame.width / 4, y: view.frame.height - 250)
        view.addSubview(typesLabel)
    }
    
    private func createPointsLabel()
    {
        pointsLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        pointsLabel.text = "Points"
        pointsLabel.font = UIFont(name: "AmericanTypewriter", size: 25.0)
        pointsLabel.textAlignment = .center
        pointsLabel.center = CGPoint(x: 3 * view.frame.width / 4, y: view.frame.height - 250)
        view.addSubview(pointsLabel)
    }
    
    @objc func pointsClicked()
    {
        pointButton.backgroundColor = constants.silver
        performSegue(withIdentifier: "toPointSearchVC", sender: self)
    }
    
    @objc func typesClicked()
    {
        typeButton.backgroundColor = constants.silver
        performSegue(withIdentifier: "toTypeSearchVC", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
