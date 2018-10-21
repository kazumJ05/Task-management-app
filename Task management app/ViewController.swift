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
    var characterDataArray: [Dictionary<String, String>] = []
    let savedata = UserDefaults.standard
    @IBOutlet var table: UITableView!
    @IBOutlet var lvlabel:UILabel!
    @IBOutlet var charaImageView: UIImageView!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var oldPtLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         table.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        table.rowHeight = 90
        oldPtLabel.textAlignment = NSTextAlignment.right
        lvlabel.textAlignment = NSTextAlignment.right
        namelabel.textAlignment = NSTextAlignment.right
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(studydataArray)
        if savedata.array(forKey: "STUDYDATA") != nil{
            studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
        }
        table.reloadData()
    }
    
// override func viewWillAppear(_ animated: Bool) {
//    super.viewWillAppear(true)
//     if savedata.array(forKey: "STUDYDATA") != nil{
//         studydataArray = savedata.array(forKey: "STUDYDATA") as! [Dictionary<String, String>]
//     }
//        table.reloadData()
// }
    
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
        oldPtLabel.text = nowIndexPathDictionary["pt"]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
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

