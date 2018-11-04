//
//  configrationViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class configrationViewController: UIViewController, UITableViewDataSource{
    
    var characterDataArray: [Dictionary<String, String>] = []
    var colorDataArray: [Dictionary<String, Int>] = []
    var colornumber: Int = 1
    
    let colorSaveData = UserDefaults.standard
    
    @IBOutlet var characterTable: UITableView!
    @IBOutlet var whiteButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var pinkButton: UIButton!
    @IBOutlet var yellowButton: UIButton!
    @IBOutlet var purpleButton: UIButton!
    @IBOutlet var orangeButton: UIButton!
    @IBOutlet var creamButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if colornumber == 1{
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            whiteButton.isHidden = true
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 1
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 2{
            
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = true
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 2
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")

        }else if colornumber == 3 {
            
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = true
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 3
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 4 {
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = true
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 4
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 5 {
            
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = true
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 5
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 6 {
            
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = true
            orangeButton.isHidden = false
            creamButton.isHidden = false
            colornumber = 6
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 7{
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = true
            creamButton.isHidden = false
            colornumber = 7
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
            
        }else if colornumber == 8 {
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            whiteButton.isHidden = false
            blueButton.isHidden = false
            greenButton.isHidden = false
            pinkButton.isHidden = false
            yellowButton.isHidden = false
            purpleButton.isHidden = false
            orangeButton.isHidden = false
            creamButton.isHidden = true
            colornumber = 8
            let colorSet = ["colorData": colornumber]
            colorDataArray.append(colorSet)
            colorSaveData.set(colorDataArray, forKey: "COLOR")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectcolorwhite(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        whiteButton.isHidden = true
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 1
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolorblue(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = true
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 2
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolorgreen(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = true
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 3
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolorpink(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = true
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 4
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcoloryellow(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = true
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 5
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolorpurple(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = true
        orangeButton.isHidden = false
        creamButton.isHidden = false
        colornumber = 6
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolororange(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = true
        creamButton.isHidden = false
        colornumber = 7
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }
    
    @IBAction func selectcolorcream(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
        purpleButton.isHidden = false
        orangeButton.isHidden = false
        creamButton.isHidden = true
        colornumber = 8
        let colorSet = ["colorData": colornumber]
        colorDataArray.append(colorSet)
        colorSaveData.set(colorDataArray, forKey: "COLOR")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForCharacter", for: indexPath) as! CharacterListTableViewCell
        
        let nowIndexPathDictionary = characterDataArray[indexPath.row]
        
        //cell.characterImageView.image = nowIndexPathDictionary["character"]
        cell.nameLabel.text = nowIndexPathDictionary["name"]
        cell.LvLabel.text = nowIndexPathDictionary["Lv"]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
