//
//  CategorySelectViewController.swift
//  Pokedex-MDB
//
//  Created by Isabella Lau on 9/11/18.
//  Copyright © 2018 Brandon David. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var typeButton : UIButton!
    var pointButton : UIButton!
    var startButton : UIButton!
    var searchButton : UIButton!

    var trophyImage : UIImage!
    var boxImage : UIImage!
    
    var typesLabel : UILabel!
    var pointsLabel : UILabel!
    var searchLabel : UILabel!
    var attackLabel : UILabel!
    var defenseLabel : UILabel!
    var healthLabel : UILabel!
    
    var attackIcon : UIImageView!
    var defenseIcon : UIImageView!
    var healthIcon : UIImageView!
    
    var attackInput : UITextField!
    var defenseInput : UITextField!
    var healthInput : UITextField!
    
    var constants = Constants()
    var selectedTypes : [String]!
    
    var attack: Int!
    var defense: Int!
    var health: Int!
    
    @IBOutlet var typesCollection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = Constants.white

        selectedTypes = []
        
        attack = 0
        health = 0
        defense = 0
        
        createIcons()
        createTextFields()
        
        createTypes()
        
        createSearchButton()
    }

    private func createTypes()
    {
        let layout = UICollectionViewFlowLayout()

        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: view.frame.width / 4, height: view.frame.width / 4)

        typesCollection = UICollectionView(frame: CGRect(x: 20, y: 120, width: view.frame.width - 40, height: view.frame.height / 2 - 25), collectionViewLayout: layout)
        typesCollection.register(TypeCell.self, forCellWithReuseIdentifier: "typeCell")
        typesCollection.backgroundColor = Constants.white
        
        typesCollection.showsVerticalScrollIndicator = true
        typesCollection.allowsMultipleSelection = true
        
        typesCollection.delegate = self
        typesCollection.dataSource = self
        
        view.addSubview(typesCollection)
    }
    
    private func createIcons()
    {
        attackIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 5, height: view.frame.height / 5))
        attackIcon.center = CGPoint(x: view.frame.width / 6, y: view.frame.height - 215)
        attackIcon.image = UIImage(named: "sword")
        attackIcon.contentMode = .scaleAspectFit
        view.addSubview(attackIcon)
        
        defenseIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 5, height: view.frame.height / 5))
        defenseIcon.center = CGPoint(x: 3 * view.frame.width / 6, y: view.frame.height - 215)
        defenseIcon.image = UIImage(named: "shield")
        defenseIcon.contentMode = .scaleAspectFit
        view.addSubview(defenseIcon)
        
        healthIcon = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width / 5, height: view.frame.height / 5))
        healthIcon.center = CGPoint(x: 5 * view.frame.width / 6, y: view.frame.height - 215)
        healthIcon.image = UIImage(named: "heart")
        healthIcon.contentMode = .scaleAspectFit
        view.addSubview(healthIcon)
    }
    
    private func createTextFields()
    {
        attackInput = UITextField(frame: CGRect(x: 0, y: 0, width:  view.frame.width / 4, height: 40))
        attackInput.center = CGPoint(x: view.frame.width / 6, y: view.frame.height - 150)
        attackInput.borderStyle = UITextBorderStyle.roundedRect
        attackInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        attackInput.placeholder = "Attack";
        attackInput.autocorrectionType = UITextAutocorrectionType.no
        attackInput.keyboardType = UIKeyboardType.default;
        attackInput.returnKeyType = UIReturnKeyType.done;
        attackInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        attackInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;
        
        view.addSubview(attackInput)
        
        defenseInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width / 4, height: 40))
        defenseInput.center = CGPoint(x: 3 * view.frame.width / 6, y: view.frame.height - 150)
        defenseInput.borderStyle = UITextBorderStyle.roundedRect
        defenseInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        defenseInput.placeholder = "Defense";
        defenseInput.autocorrectionType = UITextAutocorrectionType.no
        defenseInput.keyboardType = UIKeyboardType.default;
        defenseInput.returnKeyType = UIReturnKeyType.done;
        defenseInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        defenseInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;

        view.addSubview(defenseInput)
        
        healthInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width / 4, height: 40))
        healthInput.center = CGPoint(x: 5 * view.frame.width / 6, y: view.frame.height - 150)
        healthInput.borderStyle = UITextBorderStyle.roundedRect
        healthInput.font = UIFont(name: "AmericanTypewriter", size: 18.0)
        healthInput.placeholder = "Health";
        healthInput.autocorrectionType = UITextAutocorrectionType.no
        healthInput.keyboardType = UIKeyboardType.default;
        healthInput.returnKeyType = UIReturnKeyType.done;
        healthInput.clearButtonMode = UITextFieldViewMode.whileEditing;
        healthInput.contentVerticalAlignment = UIControlContentVerticalAlignment.center;

        view.addSubview(healthInput)
    }
    
    private func createSearchButton() {
        searchButton = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: view.frame.width / 3, height: 50))
        searchButton.center = CGPoint.init(x: view.frame.width / 2, y: view.frame.height - 75)
        searchButton.backgroundColor = Constants.medOrange
        searchButton.setTitle("Search", for: .normal)
        searchButton.addTarget(self, action: #selector(searchClicked), for: .touchUpInside)
        self.view.addSubview(searchButton)
    }
    
    @objc func searchClicked() {
        let inputtedWordsAlert = UIAlertController (title: "Error", message: "Must input integers into the text fields", preferredStyle: UIAlertControllerStyle.alert)
        inputtedWordsAlert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        
        let over200Alert = UIAlertController (title: "Error", message: "Minimum cannot be greater than 200", preferredStyle: UIAlertControllerStyle.alert)
        over200Alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        
        if attackInput.text != "" {
            if let attackInt = Int(attackInput.text!) {
                if attackInt > 200 {
                    present(over200Alert, animated: true, completion: nil)
                    return
                }
                attack = attackInt
            } else {
                present(inputtedWordsAlert, animated: true, completion: nil)
                return
            }
        }
        if defenseInput.text != "" {
            if let defenseInt = Int(defenseInput.text!) {
                if defenseInt > 200 {
                    present(over200Alert, animated: true, completion: nil)
                    return
                }
                defense = defenseInt
            } else {
                present(inputtedWordsAlert, animated: true, completion: nil)
                return
            }
        }
        if healthInput.text != "" {
            if let healthInt = Int(healthInput.text!) {
                if healthInt > 200 {
                    present(over200Alert, animated: true, completion: nil)
                    return
                }
                health = healthInt
            } else {
                present(inputtedWordsAlert, animated: true, completion: nil)
                return
            }
        }
        
        performSegue(withIdentifier: "toResultsVC", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let resultsVC = segue.destination as! ResultsViewController
        resultsVC.selectedTypes = selectedTypes
        
        debugPrint(attackInput, healthInput, defenseInput)

        resultsVC.attackMinimum = attack
        resultsVC.defenseMinimum = defense
        resultsVC.healthMinimum = health
    }
}
