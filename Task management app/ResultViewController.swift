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
    var getCharacterArrayNumber: Int = 0
    
    
    let colorSavaData = UserDefaults.standard
    let getCharacterNumber = UserDefaults.standard
    let characterNameDataArrayBeforeGet: [String] = ["", "", "", "", ""]
    let characterImageDataArrayBeforeGet: [String] = ["", "", "", "", ""]

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
            
            getCharacterArrayNumber = getCharacterNumber.object(forKey: "GETCHARACTER") as! Int
            
        }
        
        switch colorNumber {
            
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
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
