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
    let colorSaveData = UserDefaults.standard
    let savedata = UserDefaults.standard
    
    var colornumber: Int = 1
    var oldPt: Int = 0
    var afterGachaPt: Int = 0
    var selectCharacterFromGacha: Int = 0
    
    @IBOutlet var nowPtLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nowPtLabel.textAlignment = NSTextAlignment.right
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectmawasu(){
        if oldPt < 10{
            let aleat = UIAlertController(title: "エラー", message:"ptが足りません", preferredStyle: .alert)
            aleat.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(aleat, animated: true, completion: nil)
        }else{
            afterGachaPt = oldPt - 10
            selectCharacterFromGacha = Int(arc4random())
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        if colorSaveData.object(forKey: "COLOR") != nil {
        
            colornumber = colorSaveData.object(forKey: "COLOR") as! Int
        }
        
        let nowIndexPathDictionary = studydataArray.last
        nowPtLabel.text = nowIndexPathDictionary?["pt"]
        
        
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
