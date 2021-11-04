//
//  CellTableViewCell.swift
//  MHW Armoury
//
//  Created by Jonathan Bins on 7/27/20.
//  Copyright © 2020 Jonathan Bins. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
