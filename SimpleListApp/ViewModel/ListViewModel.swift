//
//  ListViewModel.swift
//  SimpleListApp
//
//  Created by Charles Prado on 09/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import UIKit

struct ListViewModel {
    
    var items: [ListItemViewModel]
    
    var numberOfItems: Int {
        return items.count
    }
    
    init(items: [ListItemViewModel]) {
        self.items = items
    }
    
    func viewModel(for indexPath: IndexPath) -> ListItemViewModel {
        // will crash if indexPath.row is greater than items.count
        return items[indexPath.row]
    }
}

struct ListItemViewModel {
    var item: ListItem
}
