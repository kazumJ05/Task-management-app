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
    var characterImageArray: [Dictionary<String, UIImage>] = []
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
        
    // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if colorSaveData.object(forKey: "COLOR") != nil {
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
        }
        
        print(colornumber)
        
        switch colornumber {
            
        case 1:
            
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            whiteButton.isHidden = true
            
        case 2:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            blueButton.isHidden = true
            
        case 3:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            greenButton.isHidden = true
            
        case 4:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            pinkButton.isHidden = true
            
        case 5:
            
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            yellowButton.isHidden = true
            
        case 6:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            purpleButton.isHidden = true
            
        case 7:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            orangeButton.isHidden = true
            
        case 8:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            creamButton.isHidden = true
            
        default:
            break
        }
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        colorSaveData.set(colornumber, forKey: "COLOR")
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
        
        let nowCharacterIndexPathDictionary = characterImageArray[indexPath.row]
        
        cell.characterImageView.image = nowCharacterIndexPathDictionary["image"]
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
