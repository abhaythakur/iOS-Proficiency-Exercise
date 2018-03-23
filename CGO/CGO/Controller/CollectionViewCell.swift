//
//  CollectionViewCell.swift
//  CGO
//
//  Created by Abhay on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: CachedImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    func displayContentCell(imageUrl: String, title: String) {
       
        lblTitle.text = title
        if (imageUrl.count > 0)
        {
            imgView.loadImage(urlString: imageUrl)
        }
    }
    
   
}
