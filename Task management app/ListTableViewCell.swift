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
    @IBOutlet var timelabel: UILabel!
    @IBOutlet var datelabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        timelabel.textAlignment = NSTextAlignment.right
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
