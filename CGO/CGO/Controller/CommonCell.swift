//
//  CommonCell.swift
//  CGO
//
//  Created by Shiva on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

class CommonCell: UITableViewCell {

    
    @IBOutlet weak var imgView: CachedImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
