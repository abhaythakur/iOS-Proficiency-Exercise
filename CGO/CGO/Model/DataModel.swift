//
//  DataModel.swift
//  CGO
//
//  Created by Abhay on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

struct DataModel {
        let title: String?
        let description: String?
        let imageHref: String?
        
    
    init() {
        self.title =  ""
        self.description =  ""
        self.imageHref =  ""
    }
    init(dictionary: DataModelJSON) {
        self.title = dictionary["title"] as? String ?? ""
        self.description = dictionary["description"] as? String ?? ""
        self.imageHref = dictionary["imageHref"] as? String ?? ""
    }
}

