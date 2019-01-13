//
//  GachaViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class GachaViewController: UIViewController {
    
    var characterDataArray : [Dictionary<String, String>] = []
    var characterImageArray : [Dictionary<String, UIImage>] = []
    var studydataArray : [Dictionary<String, String>] = []
    
    let studyPtSaveData = UserDefaults.standard
    let colorSaveData = UserDefaults.standard
    let savedata = UserDefaults.standard
    let getCharacterNumber = UserDefaults.standard
    let nowFlag = UserDefaults.standard
    let characterNameDataArrayBeforeGet: [String] = ["plus", "minus", "division", "kakeru", "equal"]
    let characterImageDataArrayBeforeGet: [String] = ["plus.png", "minus.png", "waru.png", "kakeru.png", "equal.png"]
    var characterFlag: [Bool] = [false, false, false, false, false]
    
    
    var colornumber: Int = 1
    var afterGachaPt: Int = 0
    var studyPt: Int = 0
    var getCharacterDataArrayNumber: Int = 0
    
    @IBOutlet var nowPtLabel: UILabel!
    @IBOutlet var rollBut: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nowPtLabel.textAlignment = NSTextAlignment.right
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectmawasu(){
        if studyPt < 10{
            let aleat = UIAlertController(title: "エラー", message:"ptが足りません", preferredStyle: .alert)
            aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleat, animated: true, completion: nil)
        }else{
            
            studyPt = studyPt - 10
            studyPtSaveData.set(studyPt, forKey: "STUDYPT")
            
            while true{
                getCharacterDataArrayNumber = Int(arc4random_uniform(5))
                if characterFlag[getCharacterDataArrayNumber] == false{
                    characterFlag[getCharacterDataArrayNumber] = true
                    performSegue(withIdentifier: "toResultView", sender: nil)
                    nowFlag.set(characterFlag, forKey: "nowFlag")
                    break
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultView"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.getCharacterDataArrayNumber = getCharacterDataArrayNumber
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if savedata.array(forKey: "STUDYDATA") != nil{
            
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
            
        }
        if colorSaveData.object(forKey: "COLOR") != nil {
        
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
            
        }
        if studyPtSaveData.object(forKey: "STUDYPT") != nil{
            
            studyPt = studyPtSaveData.object(forKey: "STUDYPT") as! Int
            nowPtLabel.text = String(studyPt)
            
            print(studyPt)
        }
        
        if nowFlag.array(forKey: "nowFlag") != nil{
            characterFlag = nowFlag.array(forKey: "nowFlag") as! [Bool]
        }
        
        
        
        switch colornumber {
            
        case 1:
            
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 2:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7074827594, green: 0.9915311623, blue: 1, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 3:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 4:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7012115478, blue: 0.9455770609, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.4045906843, green: 0.3120470547, blue: 0.8078431373, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1), for: .normal)
            
            
        case 5:
            
            self.view.backgroundColor = #colorLiteral(red: 0.9044649638, green: 0.920255829, blue: 0.02642256488, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
            
        case 6:
            
            self.view.backgroundColor = #colorLiteral(red: 0.7769867573, green: 0.6931459018, blue: 1, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 7:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.7809499445, blue: 0.2804552203, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        case 8:
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 0.9949270454, blue: 0.5738554714, alpha: 1)
            rollBut.backgroundColor = #colorLiteral(red: 0.7931890626, green: 1, blue: 0.5290435264, alpha: 1)
            rollBut.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
            
        default:
            break
        }
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
