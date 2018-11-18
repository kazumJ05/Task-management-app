//
//  ResultViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/11/04.
//  Copyright © 2018 oharakazumasa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var colorNumber: Int = 0
    var getCharacterDataArrayNumber: Int!
    var characterDataArray : [Dictionary<String, String>] = []
    var characterImageArray : [Dictionary<String, String>] = []
    
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var characterNameLabel: UILabel!
    
    let colorSavaData = UserDefaults.standard
    let getCharacterNumber = UserDefaults.standard
    let characterNameSaveData = UserDefaults.standard
    let characterImageSaveData = UserDefaults.standard
    let characterNameDataArrayBeforeGet: [String] = ["plus", "minus", "division", "kakeru", "equal"]
    let characterImageDataArrayBeforeGet: [String] = ["plus.png", "minus.png", "waru.png", "kakeru.png", "equal.png"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectBack(){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if colorSavaData.object(forKey: "COLOR") != nil{
            
            colorNumber = colorSavaData.object(forKey: "COLOR") as! Int
            
        }
//        if getCharacterNumber.object(forKey: "GETCHARACTER") != nil{
//
//            getCharacterDataArrayNumber = getCharacterNumber.object(forKey:"GETCHARACTER") as? Int
        
            print(getCharacterDataArrayNumber)
//        }
        
        switch getCharacterDataArrayNumber {
        case 0:

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[0])
            characterNameLabel.text = characterNameDataArrayBeforeGet[0]

            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[0]]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[0]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")

        case 1:

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[1])
            characterNameLabel.text = characterNameDataArrayBeforeGet[1]

            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[1]]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[1]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")

        case 2:

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[2])
            characterNameLabel.text = characterNameDataArrayBeforeGet[2]

            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[2]]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[2]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")


        case 3:

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[3])
            characterNameLabel.text = characterNameDataArrayBeforeGet[3]

            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[3]]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[3]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")


        case 4:

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[4])
            characterNameLabel.text = characterNameDataArrayBeforeGet[4]

            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[4]]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[4]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")

        default:
            break
        }
        
        
        
        switch colorNumber {
            
        case 1:
            
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        case 2:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            
        case 3:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            
        case 4:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            
            
        case 5:
            
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            
            
        case 6:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            
        case 7:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            
        case 8:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            
        default:
            
            break
            
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
