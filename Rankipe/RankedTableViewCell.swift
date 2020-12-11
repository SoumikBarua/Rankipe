//
//  RankedTableViewCell.swift
//  Rankipe
//
//  Created by Pawan on 12/10/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit

class RankedTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageLabel: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var RateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
