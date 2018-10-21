//
//  ListTableViewCell.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/09/09.
//  Copyright © 2018年 oharakazumasa. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet var subjectlabel: UILabel!
    @IBOutlet var timecountlabel: UILabel!
    @IBOutlet var timeminutelabel: UILabel!
    @IBOutlet var timehourlabel: UILabel!
    @IBOutlet var datelabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        timecountlabel.textAlignment = NSTextAlignment.right
        timeminutelabel.textAlignment = NSTextAlignment.right
        timehourlabel.textAlignment = NSTextAlignment.right
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
