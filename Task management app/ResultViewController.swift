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
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view6: UIView!
    
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
     let characterNameDataArrayBeforeGet: [String] = ["とりダルマ", "ねこダルマ", "いぬダルマ", "カエルダルマ", "ひつじダルマ", "カッパダルマ", "ねこダルマ(レア)", "パンダダルマ", "ブタダルマ", "ゾウダルマ", "ひよこダルマ", "うさぎダルマ", "たぬきダルマ", "いぬダルマ(レア)", "カエルダルマ(レア)", "ひつじダルマ(レア)", "カッパダルマ(レア)", "パンダダルマ(レア)", "うさぎダルマ(レア)", "たぬきダルマ(レア)", "ゾウダルマ(レア)", "ブタダルマ(レア)", "ペンギンダルマ"]
    let characterImageDataArrayBeforeGet: [String] = ["bird_cut.png", "cat_cut.png", "dog_cut.png", "flog_cut.png", "hituzi_cut.png", "kappa_cut.png", "cat2.png", "panda_cut.png", "pig_cut.png", "zou_cut.png", "bird2-2.png", "rabit.png", "tanuki1-2.png", "dog2.png", "flog2.png", "hituzi2.png", "kappa2.png", "panda2.png", "rabit2.png", "tanuki2.png", "zou2.png", "pig2.png", "kingpengwin_cut.png"]
    
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
        if getCharacterDataArrayNumber >= 0 && getCharacterDataArrayNumber <= 5 {
            
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
            
        }else if getCharacterDataArrayNumber >= 10 && getCharacterDataArrayNumber <= 15{

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = characterNameDataArrayBeforeGet[getCharacterDataArrayNumber]
//            skilLv = skilLv + 1
            
            let getCharacter = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber], "Lv": String(lvPt), "skilLv": String(skilLv)]
            characterDataArray.append(getCharacter)
            characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
            
            let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
            characterImageArray.append(getCharacterImage)
            characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
            
            IDArray.append(getCharacterDataArrayNumber)
            IDSaveData.set(IDArray, forKey: "ID")
            
        }else if getCharacterDataArrayNumber >= 20 && getCharacterDataArrayNumber <= 25{
        
            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = characterNameDataArrayBeforeGet[getCharacterDataArrayNumber]
            nameLabel.isHidden = true
//            skilLv = skilLv + 2
        
        let getCharacter = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber], "Lv": String(lvPt), "skilLv": String(skilLv)]
        characterDataArray.append(getCharacter)
        characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
        
        let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
        characterImageArray.append(getCharacterImage)
        characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")
        
        IDArray.append(getCharacterDataArrayNumber)
        IDSaveData.set(IDArray, forKey: "ID")

        }else if getCharacterDataArrayNumber >= 30 && getCharacterDataArrayNumber <= 35{

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = characterNameDataArrayBeforeGet[getCharacterDataArrayNumber]
//            skilLv = skilLv + 3
        
        let getCharacter = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber], "Lv": String(lvPt), "skilLv": String(skilLv)]
        characterDataArray.append(getCharacter)
        characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

        let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
        characterImageArray.append(getCharacterImage)
        characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")

        IDArray.append(getCharacterDataArrayNumber)
        IDSaveData.set(IDArray, forKey: "ID")

        }else if getCharacterDataArrayNumber >= 40 && getCharacterDataArrayNumber <= 45{

            characterImageView.image = UIImage(named:characterImageDataArrayBeforeGet[getCharacterDataArrayNumber])
            characterNameLabel.text = characterNameDataArrayBeforeGet[getCharacterDataArrayNumber]
//            skilLv = skilLv + 4

        let getCharacter = ["characterName": characterNameDataArrayBeforeGet[getCharacterDataArrayNumber], "Lv": String(lvPt), "skilLv": String(skilLv)]
        characterDataArray.append(getCharacter)
        characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")

        let getCharacterImage = ["characterImage": characterImageDataArrayBeforeGet[getCharacterDataArrayNumber]]
        characterImageArray.append(getCharacterImage)
        characterImageSaveData.set(characterImageArray, forKey: "CHARACTERIMAGE")

        IDArray.append(getCharacterDataArrayNumber)
        IDSaveData.set(IDArray, forKey: "ID")
            
        }
        
        switch colorNumber {
        case 1:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view3.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view4.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view6.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 2:
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 3:
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 4:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            returnBut.backgroundColor  = #colorLiteral(red: 0.4045906843, green: 0.3120470547, blue: 0.8078431373, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1), for: .normal)
        case 5:
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 6:
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 7:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            returnBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            returnBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        case 8:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            self.view3.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            self.view4.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            self.view6.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
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

}
