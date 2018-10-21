//
//  addViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class addViewController: UIViewController, UITextFieldDelegate {
    
    var timercount: Int = 7200
    var timerhour: Int = 0
    var timerminute: Int = 0
    var timersecond: Int = 0
    var ptCount: Int = 0
    var oldPtCount: Int = 0
    var studydataArray: [Dictionary<String, String>] = []
    var timer: Timer = Timer()
    let savedata = UserDefaults.standard
    
    @IBOutlet var timesecondlabel: UILabel!
    @IBOutlet var timehourlabel: UILabel!
    @IBOutlet var timeminutelabel: UILabel!
    @IBOutlet var subjecttextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        
        timesecondlabel.textAlignment = NSTextAlignment.right
        timehourlabel.textAlignment = NSTextAlignment.right
        timeminutelabel.textAlignment = NSTextAlignment.right
        // Do any additional setup after loading the view.
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
            let studyrireki = ["subject": subjecttextField.text!, "secondtime": String(timersecond), "minutetime": String(timerminute), "hourtime": String(timerhour), "date": String(gettoday()), "pt": String(ptCount)]
            studydataArray.append(studyrireki)
            savedata.set(studydataArray, forKey: "STUDYDATA")
            let aleat = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
            aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleat, animated: true, completion: nil)
            subjecttextField.text = ""
            timercount = 0
            timerhour = 0
            timersecond = 0
            timerminute = 0
            timesecondlabel.text = String(Int(timersecond))
            timeminutelabel.text = String(Int(timerminute))
            timehourlabel.text = String(Int(timerhour))
            oldPtCount = ptCount
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
