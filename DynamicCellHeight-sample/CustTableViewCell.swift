//
//  CustTableViewCell.swift
//  DynamicCellHeight-sample
//
//  Created by Tsunemasa Hachiya on 2018/01/16.
//  Copyright © 2018年 Tsunemasa Hachiya. All rights reserved.
//

import UIKit

class CustTableViewCell: UITableViewCell {

    @IBOutlet weak var custLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
