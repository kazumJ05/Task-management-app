//
//  InstructionViewController.swift
//  Task management app
//
//  Created by 大原一倫 on 2019/07/07.
//  Copyright © 2019 oharakazumasa. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController {
    
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!
    @IBOutlet var image7: UIImageView!
    @IBOutlet var image8: UIImageView!
    @IBOutlet var image9: UIImageView!
    @IBOutlet var image10: UIImageView!
    @IBOutlet var image11: UIImageView!
    @IBOutlet var image12: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        image1.image = UIImage(named: "bird_cut.png")
        image2.image = UIImage(named: "cat_cut.png")
        image3.image = UIImage(named: "dog_cut.png")
        image4.image = UIImage(named: "flog_cut.png")
        image5.image = UIImage(named: "hituzi_cut.png")
        image6.image = UIImage(named: "kappa_cut.png")
        image7.image = UIImage(named: "panda_cut.png")
        image8.image = UIImage(named: "pig_cut.png")
        image9.image = UIImage(named: "zou_cut.png")
        image10.image = UIImage(named: "rabit.png")
        image11.image = UIImage(named: "tanuki1-2.png")
        image12.image = UIImage(named: "kingpengwinDark.png")        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectback(){
        self.dismiss(animated: true, completion: nil)
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
