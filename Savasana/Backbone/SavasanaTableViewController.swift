//
//  TableViewDataSource.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

open class SavasanaTableViewController: UITableViewController {

    open var items = [CellConfigurator]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.items[indexPath.row]

        guard let cell = tableView.dequeueReusableCell(withIdentifier: type(of: item).reusableID) else {
            return UITableViewCell()
        }

        item.configure(cell: cell)

        return cell
    }

    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    open func setupUI() {
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 50
        self.tableView.tableFooterView = UIView()
    }
}
