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
    var lvPt: Int = 0
    var skilLv : Int = 0
    var getCharacterDataArrayNumber: Int = 0
    var characterDataArray : [Dictionary<String, String>] = []
    var characterImageArray : [Dictionary<String, String>] = []
    var IDArray : [Int] = []
    
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var returnBut: UIButton!
    @IBOutlet var nameLabel: UILabel!
    
    let colorSavaData = UserDefaults.standard
    let getCharacterNumber = UserDefaults.standard
    let characterNameSaveData = UserDefaults.standard
    let characterImageSaveData = UserDefaults.standard
    let IDSaveData = UserDefaults.standard
    let nowFlag = UserDefaults.standard
    let nowFlag1 = UserDefaults.standard
    let nowFlag2 = UserDefaults.standard
    let nowFlag3 = UserDefaults.standard
    let nowFlag4 = UserDefaults.standard
    let characterNameDataArrayBeforeGet: [String] = ["plus", "minus", "division", "kakeru", "equal"]
    let characterImageDataArrayBeforeGet: [String] = ["plus.png", "minus.png", "waru.png", "kakeru.jpg", "equal.png"]
    

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
        if getCharacterNumber.object(forKey: "GETCHARACTER") != nil{
            getCharacterDataArrayNumber = getCharacterNumber.object(forKey:"GETCHARACTER") as! Int
            print(getCharacterDataArrayNumber)
        }
        if characterNameSaveData.array(forKey: "CHARACTERNAME") != nil{
            characterDataArray = characterNameSaveData.array(forKey: "CHARACTERNAME") as! [Dictionary<String, String>]
        }
        if characterImageSaveData.array(forKey: "CHARACTERIMAGE") != nil{
            characterImageArray = characterImageSaveData.array(forKey: "CHARACTERIMAGE") as! [Dictionary<String, String>]
        }
        if IDSaveData.array(forKey: "ID") != nil{
            IDArray = IDSaveData.array(forKey: "ID") as! [Int]
        }
        if getCharacterDataArrayNumber >= 0 && getCharacterDataArrayNumber <= 9 {
            
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = characterNameDataArrayBeforeGet[getCharacterDataArrayNumber]
            
            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber], "Lv": String(lvPt), "skilLv": String(skilLv)]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
            
            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
            
            IDArray.append(getCharacterDataArrayNumber)
            IDSaveData.set(IDArray, forKey: "ID")
            
        }else if getCharacterDataArrayNumber >= 10 && getCharacterDataArrayNumber <= 19{
            
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = "スキルLv　UP!"
            nameLabel.isHidden = true
            skilLv = skilLv + 1
            
            for index in 0..<IDArray.count {
                if IDArray[index] == getCharacterDataArrayNumber {
                    let upDateLv = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber - 10], "Lv": String(lvPt), "skilLv": String(skilLv)]
                    let upDateImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
                    characterDataArray[index] = upDateLv//あたらしいもの
                    characterImageArray[index] = upDateImage
                    characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
                    characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
                    break
                }
            }
            
        }else if getCharacterDataArrayNumber >= 20 && getCharacterDataArrayNumber <= 29{
            
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = "スキルLv　UP!"
            nameLabel.isHidden = true
            skilLv = skilLv + 2
            
            for index in 0..<IDArray.count {
                if IDArray[index] == getCharacterDataArrayNumber {
                    let upDateLv = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber - 10], "Lv": String(lvPt), "skilLv": String(skilLv)]
                    let upDateImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
                    characterDataArray[index] = upDateLv//あたらしいもの
                    characterImageArray[index] = upDateImage
                    characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
                    characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
                    break
                }
            }
            
        }else if getCharacterDataArrayNumber >= 30 && getCharacterDataArrayNumber <= 39{
            
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = "スキルLv　UP!"
            nameLabel.isHidden = true
            skilLv = skilLv + 3
            
            for index in 0..<IDArray.count {
                if IDArray[index] == getCharacterDataArrayNumber {
                    let upDateLv = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber - 10], "Lv": String(lvPt), "skilLv": String(skilLv)]
                    let upDateImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
                    characterDataArray[index] = upDateLv//あたらしいもの
                    characterImageArray[index] = upDateImage
                    characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
                    characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
                    break
                }
            }
            
        }else if getCharacterDataArrayNumber >= 40 && getCharacterDataArrayNumber <= 49{
            
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = "スキルLv　UP!"
            nameLabel.isHidden = true
            skilLv = skilLv + 4
            
            for index in 0..<IDArray.count {
                if IDArray[index] == getCharacterDataArrayNumber {
                    let upDateLv = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber - 10], "Lv": String(lvPt), "skilLv": String(skilLv)]
                    let upDateImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
                    characterDataArray[index] = upDateLv//あたらしいもの
                    characterImageArray[index] = upDateImage
                    characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
                    characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
                    break
                }
            }
            
        }
        
        switch colorNumber {
        case 1:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 2:
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 3:
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 4:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            returnBut.backgroundColor  = #colorLiteral(red: 0.4045906843, green: 0.3120470547, blue: 0.8078431373, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1), for: .normal)
        case 5:
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 6:
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 7:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 8:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
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


