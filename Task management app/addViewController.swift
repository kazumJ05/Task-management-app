//
//  addViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class addViewController: UIViewController, UITextFieldDelegate {
    
    var timercount: Double = 0
    var studydataArray: [Dictionary<String, String>] = []
    var timer: Timer = Timer()
    let savedata = UserDefaults.standard
    
    @IBOutlet var timelabel: UILabel!
    @IBOutlet var subjecttextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        
        timelabel.textAlignment = NSTextAlignment.right
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectsave(){
        if timer.isValid{
            timer.invalidate()
        }
        let studyrireki = ["subject": subjecttextField.text!, "time": String(Int(timercount)), "date": String(gettoday())]
        studydataArray.append(studyrireki)
        savedata.set(studydataArray, forKey: "STUDYDATA")
        let aleat = UIAlertController(title: "保存完了", message: "保存が完了しました", preferredStyle: .alert)
        aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(aleat, animated: true, completion: nil)
        subjecttextField.text = ""
        timercount = 0
        timelabel.text = String(Int(timercount))
        
        
    }
    
    @IBAction func selectstartstop(){
        if !timer.isValid{
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.up),userInfo: nil, repeats: true)
        }else if timer.isValid{
            timer.invalidate()
        }
    }
    
    @objc func up(){
        timercount = timercount + 0.01
        timelabel.text = String(format: "%.0f", timercount)
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
