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
    
    @IBOutlet var characterTable: UITableView!
    @IBOutlet var whiteButton: UIButton!
    @IBOutlet var blueButton: UIButton!
    @IBOutlet var greenButton: UIButton!
    @IBOutlet var pinkButton: UIButton!
    @IBOutlet var yellowButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        whiteButton.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectcolorwhite(){
        
        
        
        whiteButton.isHidden = true
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
    }
    
    @IBAction func selectcolorblue(){
        
        
        
        whiteButton.isHidden = false
        blueButton.isHidden = true
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = false
    }
    
    @IBAction func selectcolorgreen(){
        
        
        
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = true
        pinkButton.isHidden = false
        yellowButton.isHidden = false
    }
    
    @IBAction func selectcolorpink(){
        
        
        
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = true
        yellowButton.isHidden = false
    }
    
    @IBAction func selectcoloryellow(){
        
        
        
        whiteButton.isHidden = false
        blueButton.isHidden = false
        greenButton.isHidden = false
        pinkButton.isHidden = false
        yellowButton.isHidden = true
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
        
        cell.characterImageView.image = nowIndexPathDictionary["character"]
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
