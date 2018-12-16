//
//  configrationViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class configrationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var characterDataArray: [Dictionary<String, String>] = []
    var characterImageArray: [Dictionary<String, String>] = []
    var colornumber: Int = 1
    var selectCell : Int? = nil
    
    let colorSaveData = UserDefaults.standard
    let characterNameSaveData = UserDefaults.standard
    let characterImageSaveData = UserDefaults.standard
    let setCharctCellData = UserDefaults.standard
    let characterNameDataArrayBeforeGet: [String] = ["plus", "minus", "division", "kakeru", "equal"]
    let characterImageDataArrayBeforeGet: [String] = ["plus.png", "minus.png", "waru.png", "kakeru.png", "equal.png"]
    
    @IBOutlet var characterTable: UITableView!
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "CharacterListTableViewCell", bundle: nil), forCellReuseIdentifier: "CellForCharacter")
        table.rowHeight = 90
    // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        if colorSaveData.object(forKey: "COLOR") != nil {
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
        }
        
        if characterNameSaveData.array(forKey: "CHARACTERNAME") != nil{
            
            characterDataArray = characterNameSaveData.array(forKey: "CHARACTERNAME") as! [Dictionary<String, String>]
            
        }
        
        if characterImageSaveData.array(forKey: "CHARACTERIMAGE") != nil{
        
            characterImageArray = characterImageSaveData.array(forKey: "CHARACTERIMAGE") as! [Dictionary<String, String>]
            
        }
        
        table.reloadData()
        
//        print(colornumber)
//        print(characterDataArray)
//        print(characterImageArray)
        
        switch colornumber {
            
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
    
    @IBAction func selectcolorwhite(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        colornumber = 1
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolorblue(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
        colornumber = 2
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolorgreen(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
        colornumber = 3
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolorpink(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
        colornumber = 4
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcoloryellow(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
        colornumber = 5
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolorpurple(){
        
        self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
        colornumber = 6
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolororange(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
        colornumber = 7
        colorSaveData.set(colornumber, forKey: "COLOR")
    }
    
    @IBAction func selectcolorcream(){
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
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
        let nowCharIndexPathDictionary = characterImageArray[indexPath.row]
        
        print(nowIndexPathDictionary)
        print(nowCharIndexPathDictionary)
        
        cell.nameLabel.text = nowIndexPathDictionary["characterName"]
        cell.characterImageView.image = UIImage(named: nowCharIndexPathDictionary["characterImage"]!)
        
        return cell
    }
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectCell = indexPath.row
        setCharctCellData.set(selectCell, forKey: "SETCELLCHA")
        
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
