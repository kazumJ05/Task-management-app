//
//  CharacterListTableViewCell.swift
//  Task management app
//
//  Created by 大原一倫 on 2018/10/21.
//  Copyright © 2018 oharakazumasa. All rights reserved.
//

import UIKit

class CharacterListTableViewCell: UITableViewCell {
    
    @IBOutlet var characterImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var LvLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
