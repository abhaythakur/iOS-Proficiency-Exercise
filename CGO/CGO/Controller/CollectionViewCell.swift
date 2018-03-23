//
//  CollectionViewCell.swift
//  CGO
//
//  Created by Abhay on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    func displayContentCell(image: UIImage, title: String) {
        imgView.image = image
        lblTitle.text = title
    }
}
