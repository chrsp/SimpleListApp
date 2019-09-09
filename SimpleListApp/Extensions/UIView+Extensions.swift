//
//  UIView+Extensions.swift
//  SimpleListApp
//
//  Created by Charles Prado on 09/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import UIKit

extension UIView {
    func pinView(to view: UIView, padding: CGFloat = 0.0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: view.topAnchor, constant: padding).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
        self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
        self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive = true
    }
}
