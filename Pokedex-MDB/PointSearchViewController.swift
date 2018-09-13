//
//  PointSearchViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/12/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class PointSearchViewController: UIViewController {

    var attackLabel : UILabel!
    var defenseLabel : UILabel!
    var healthLabel : UILabel!

    var attackIcon : UIImageView!
    var defenseIcon : UIImageView!
    var healthIcon : UIImageView!
    
    var attackInput : UITextField!
    var defenseInput : UITextField!
    var healthInput : UITextField!
    
    var searchButton : UIButton!
    
    var constants = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createLabels()
        createIcons()
        createTextFields()
        createSearchButton()
    }

    private func createIcons()
    {
        attackIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 4))
        attackIcon.center = CGPoint(x: view.frame.width / 5, y: 2 * view.frame.height / 6)
        attackIcon.image = UIImage(named: "sword")
        attackIcon.contentMode = .scaleAspectFit
        view.addSubview(attackIcon)
        
        defenseIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 4))
        defenseIcon.center = CGPoint(x: view.frame.width / 5, y: 3 * view.frame.height / 6)
        defenseIcon.image = UIImage(named: "shield")
        defenseIcon.contentMode = .scaleAspectFit
        view.addSubview(defenseIcon)
        
        healthIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 4, height: view.frame.height / 4))
        healthIcon.center = CGPoint(x: view.frame.width / 5, y: 4 * view.frame.height / 6)
        healthIcon.image = UIImage(named: "heart")
        healthIcon.contentMode = .scaleAspectFit
        view.addSubview(healthIcon)
    }
    
    private func createLabels()
    {
        attackLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 50))
        attackLabel.text = "Attack"
        attackLabel.font = UIFont(name: "AmericanTypewriter", size: 35.0)
        attackLabel.textAlignment = .left
        attackLabel.center = CGPoint(x: 2 * view.frame.width / 3, y: 7 * view.frame.height / 24)
        view.addSubview(attackLabel)
        
        defenseLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 50))
        defenseLabel.text = "Defense"
        defenseLabel.font = UIFont(name: "AmericanTypewriter", size: 35.0)
        defenseLabel.textAlignment = .left
        defenseLabel.center = CGPoint(x: 2 * view.frame.width / 3, y: 11 * view.frame.height / 24)
        view.addSubview(defenseLabel)
        
        healthLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 50))
        healthLabel.text = "Health"
        healthLabel.font = UIFont(name: "AmericanTypewriter", size: 35.0)
        healthLabel.textAlignment = .left
        healthLabel.center = CGPoint(x: 2 * view.frame.width / 3, y: 15 * view.frame.height / 24)
        view.addSubview(healthLabel)
    }
    
    private func createTextFields()
    {
        attackInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 40))
        attackInput.center = CGPoint(x: 2 * view.frame.width / 3, y: 17 * view.frame.height / 48)
        attackInput.borderStyle = UITextBorderStyle.roundedRect
        attackInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        attackInput.placeholder = "Minimum attack";
        attackInput.autocorrectionType = UITextAutocorrectionType.no
        attackInput.keyboardType = UIKeyboardType.default;
        attackInput.returnKeyType = UIReturnKeyType.done;
        attackInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        attackInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;

        view.addSubview(attackInput)
        
        defenseInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 40))
        defenseInput.center = CGPoint(x: 2 * view.frame.width / 3, y: 25 * view.frame.height / 48)
        defenseInput.borderStyle = UITextBorderStyle.roundedRect
        defenseInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        defenseInput.placeholder = "Minimum defense";
        defenseInput.autocorrectionType = UITextAutocorrectionType.no
        defenseInput.keyboardType = UIKeyboardType.default;
        defenseInput.returnKeyType = UIReturnKeyType.done;
        defenseInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        defenseInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;

        view.addSubview(defenseInput)
        
        healthInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 40))
        healthInput.center = CGPoint(x: 2 * view.frame.width / 3, y: 33 * view.frame.height / 48)
        healthInput.borderStyle = UITextBorderStyle.roundedRect
        healthInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        healthInput.placeholder = "Minimum health";
        healthInput.autocorrectionType = UITextAutocorrectionType.no
        healthInput.keyboardType = UIKeyboardType.default;
        healthInput.returnKeyType = UIReturnKeyType.done;
        healthInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        healthInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;

        view.addSubview(healthInput)
    }
    
    private func createSearchButton() {
        searchButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        searchButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height - 100)
        searchButton.backgroundColor = constants.medOrange
        searchButton.setTitle("Search", for: .normal)
        searchButton.addTarget(self, action: #selector(pointsClicked), for: .touchUpInside)
        self.view.addSubview(searchButton)
    }
    
    @objc func pointsClicked()
    {
        // performSegue(withIdentifier: "toPointSearchVC", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
