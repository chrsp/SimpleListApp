//
//  ListViewController.swift
//  SimpleListApp
//
//  Created by Charles Prado on 09/09/19.
//  Copyright © 2019 Charles Prado. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var tableView: UITableView!
    var viewModel: ListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mockViewModel()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = UITableView(frame: view.frame)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListItemCell.self, forCellReuseIdentifier: ListItemCell.identifier)
        self.view.addSubview(tableView)
        
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    private func mockViewModel() {
        let mockItem = ListItem(title: "Here goes a title", subtitle: "and here a subtitle :)")
        let mockItemViewModel = ListItemViewModel(item: mockItem)
        
        viewModel = ListViewModel(items: [
            mockItemViewModel,
            mockItemViewModel,
            mockItemViewModel,
            mockItemViewModel
            ])
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListItemCell.identifier, for: indexPath) as! ListItemCell
        
        let cellViewModel = viewModel.viewModel(for: indexPath)
        cell.configure(viewModel: cellViewModel)
        
        return cell
    }
}

