//
//  ViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/07/22.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var studydataArray: [Dictionary<String, String>] = []
    var characterDataArray : [Dictionary<String, String>] = []
    var characterImageArray : [Dictionary<String, String>] = []
    var colornumber: Int = 1
    var studyPt : Int = 0
    var selectedCell : Int? = nil
    
    let studyPtSaveData = UserDefaults.standard
    let colorSaveData = UserDefaults.standard
    let savedata = UserDefaults.standard
    let characterNameSaveData = UserDefaults.standard
    let characterImageSaveData = UserDefaults.standard
    let setCharctCellData = UserDefaults.standard
    
    @IBOutlet var table: UITableView!
    @IBOutlet var lvlabel:UILabel!
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var oldPtLabel: UILabel!
    @IBOutlet var skilLvLabel: UILabel!
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         table.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        table.rowHeight = 90
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        print(studydataArray)
        
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        table.reloadData()
        
        if colorSaveData.object(forKey: "COLOR") != nil {
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
        }
        
        if studyPtSaveData.object(forKey: "STUDYPT") != nil{
            studyPt = studyPtSaveData.object(forKey: "STUDYPT") as! Int
            oldPtLabel.text = String(studyPt)
        }
        
        if characterNameSaveData.array(forKey: "CHARACTERNAME") != nil{
            characterDataArray = characterNameSaveData.array(forKey: "CHARACTERNAME") as! [Dictionary<String, String>]
        }
        
        if characterImageSaveData.array(forKey: "CHARACTERIMAGE") != nil{
            characterImageArray = characterImageSaveData.array(forKey: "CHARACTERIMAGE") as! [Dictionary< String, String>]
        }
        
        if setCharctCellData.object(forKey: "SETCELLCHA") != nil{
            selectedCell = setCharctCellData.object(forKey: "SETCELLCHA") as! Int
            if selectedCell != nil{
                characterImageView.image = UIImage(named: characterImageArray[selectedCell!]["characterImage"]!)
                namelabel.text = String(characterDataArray[selectedCell!]["characterName"]!)
                lvlabel.text = String(characterDataArray[selectedCell!]["Lv"]!)
            }
        }
       
        print(colornumber)
        
        switch colornumber {
            
        case 1:
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.view2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case 2:
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
        case 3:
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
        case 4:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
        case 5:
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
        case 6:
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
        case 7:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
        case 8:
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            self.view1.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            self.view2.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
        default:
            break
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return studydataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListTableViewCell
        
        let nowIndexPathDictionary = studydataArray[indexPath.row]
        
        cell.subjectlabel.text = nowIndexPathDictionary["subject"]
        cell.datelabel.text = nowIndexPathDictionary["date"]
        cell.timecountlabel.text = nowIndexPathDictionary["secondtime"]
        cell.timeminutelabel.text = nowIndexPathDictionary["minutetime"]
        cell.timehourlabel.text = nowIndexPathDictionary["hourtime"]
    
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        studydataArray.remove(at: indexPath.row)
        
        // Delete the row from the data source
        tableView.deleteRows(at: [indexPath], with: .fade)
        tableView.reloadData()
        
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        savedata.set(studydataArray, forKey: "STUDYDATA")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

