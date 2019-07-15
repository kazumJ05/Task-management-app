//
//  addViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class addViewController: UIViewController, UITextFieldDelegate {
    
    var timercount: Int = 36000
    var timerhour: Int = 0
    var timerminute: Int = 0
    var timersecond: Int = 0
    var ptCount: Int = 0
    var oldPtCount: Int = 0
    var lvPt: Int = 0
    var oldLvPt: Int = 0
    var Lv: Int = 0
    var oldLv: Int = 0
    var setLv : Int = 0
    var studydataArray: [Dictionary<String, String>] = []
    var characterDataArray: [Dictionary<String, String>] = []
    var timer: Timer = Timer()
    var colornumber: Int = 1
    var selectedCell: Int? = nil
    
    let savedata = UserDefaults.standard
    let colorSaveData = UserDefaults.standard
    let studyPtSaveData = UserDefaults.standard
    let lvPtSaveData = UserDefaults.standard
    let setCharctCellData = UserDefaults.standard
    let characterNameSaveData = UserDefaults.standard
    
    @IBOutlet var timesecondlabel: UILabel!
    @IBOutlet var timehourlabel: UILabel!
    @IBOutlet var timeminutelabel: UILabel!
    @IBOutlet weak var subjecttextField: UITextField!
    @IBOutlet var startStopBut: UIButton!
    @IBOutlet var addBut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        
        subjecttextField.delegate = self
        
        timesecondlabel.textAlignment = NSTextAlignment.right
        timehourlabel.textAlignment = NSTextAlignment.right
        timeminutelabel.textAlignment = NSTextAlignment.right
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        if colorSaveData.object(forKey: "COLOR") != nil {
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
        }
        
        if studyPtSaveData.object(forKey: "STUDYPT") != nil{
            oldPtCount = studyPtSaveData.object(forKey: "STUDYPT") as! Int
        }
        
        if characterNameSaveData.array(forKey: "CHARACTERNAME") != nil{
            characterDataArray = characterNameSaveData.array(forKey: "CHARACTERNAME") as! [Dictionary<String, String>]
        }
        
        if setCharctCellData.object(forKey: "SETCELLCHA") != nil{
            selectedCell = setCharctCellData.object(forKey: "SETCELLCHA") as! Int
            oldLv = Int(characterDataArray[selectedCell!]["Lv"]!)!
        }
        
        if lvPtSaveData.object(forKey: "LvPt") != nil{
            oldLvPt = lvPtSaveData.object(forKey: "LvPt") as! Int
        }
        print(colornumber)
        
        switch colornumber {
            
        case 1:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 2:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 3:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 4:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.4045906843, green: 0.3120470547, blue: 0.8078431373, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.4045906843, green: 0.3120470547, blue: 0.8078431373, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1), for: .normal)
            
            
        case 5:
            
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
            
        case 6:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 7:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 8:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            startStopBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            startStopBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            addBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            addBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        default:
            break
        }
    }
    
    @IBAction func selectsave(){
        if timer.isValid{
            timer.invalidate()
        }
        if subjecttextField.text == ""{
            let aleat = UIAlertController(title: "エラー", message:"教科を入力してください", preferredStyle: .alert)
            aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleat, animated: true, completion: nil)
            
        }else{
            ptCount = oldPtCount + timerhour
            lvPt = oldLvPt + timerminute
            let studyrireki = ["subject": subjecttextField.text!, "secondtime": String(timersecond), "minutetime": String(timerminute), "hourtime": String(timerhour), "date": String(gettoday())]
            studydataArray.append(studyrireki)
            savedata.set(studydataArray, forKey: "STUDYDATA")
            studyPtSaveData.set(ptCount, forKey: "STUDYPT")
            lvPtSaveData.set(lvPt, forKey: "LvPt")
            Lv = lvPt / 100
            setLv = Lv + oldLv
            
            if lvPt >= 100{
                lvPt = lvPt - 100
                oldLvPt = oldLvPt - 100
            }
            
            if selectedCell != nil{
                characterDataArray[selectedCell!]["Lv"] = String(setLv)
                characterNameSaveData.set(characterDataArray, forKey: "CHARACTERNAME")
            }
            
            let aleat = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleat, animated: true, completion: nil)
            oldPtCount = ptCount
            oldLvPt = lvPt
            subjecttextField.text = ""
            timercount = 36000
            timerhour = 0
            timersecond = 0
            timerminute = 0
            ptCount = 0
            lvPt = 0
            timesecondlabel.text = String(Int(timersecond))
            timeminutelabel.text = String(Int(timerminute))
            timehourlabel.text = String(Int(timerhour))
            print(oldPtCount)
            
        }
    }
    
    @IBAction func selectstartstop(){
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.up),userInfo: nil, repeats: true)
        } else if timer.isValid{
            timer.invalidate()
        }
    }
    
    @objc func up(){
        timercount = timercount + 1
        timerhour = timercount / 3600
        timerminute = timercount % 3600 / 60
        timersecond =  timercount % 60
        
        
        timehourlabel.text = String(timerhour)
        timeminutelabel.text = String(timerminute)
        timesecondlabel.text = String(timersecond)
        
    }
    
    func gettoday(format: String = "MM/dd") -> String {
        let now = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.dateFormat = format
        return formatter.string(from: now as Date)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
