//
//  ListItem.swift
//  SimpleListApp
//
//  Created by Charles Prado on 09/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import UIKit

struct ListItem {
    var title: String
    var subtitle: String
    var image: UIImage
    
    init(title: String, subtitle: String, image: UIImage = UIImage(named: "image")!) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
}
