//
//  TableViewCell.swift
//  sections_2.2
//
//  Created by mac on 19/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
