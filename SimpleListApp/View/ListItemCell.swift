//
//  ListItemCell.swift
//  SimpleListApp
//
//  Created by Charles Prado on 09/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import UIKit

class ListItemCell: UITableViewCell {
    var title: UILabel!
    var subtitle: UILabel!
    var itemImageView: UIImageView!
    var mainStackView: UIStackView!
    var textsStackView: UIStackView!
    
    static let identifier: String = "ListCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        title = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        subtitle = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
        itemImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        textsStackView = UIStackView(arrangedSubviews: [title, subtitle])
        textsStackView.axis = .vertical
        
        mainStackView = UIStackView(frame: self.frame)
        mainStackView.axis = .horizontal
        mainStackView.spacing = 16
        mainStackView.addArrangedSubview(itemImageView)
        mainStackView.addArrangedSubview(textsStackView)
        
        addSubview(mainStackView)
        mainStackView.pinView(to: self, padding: 8)
        
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        itemImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        itemImageView.contentMode = .scaleAspectFit
    }
    
    func configure(viewModel: ListItemViewModel) {
        title.text = viewModel.item.title
        subtitle.text = viewModel.item.subtitle
        subtitle.textColor = .gray
        
        itemImageView.image = viewModel.item.image
    }
}

