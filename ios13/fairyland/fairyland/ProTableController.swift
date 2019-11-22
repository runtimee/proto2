//
//  ProTableController.swift
//  fairyland
//
//  Created by Yan Guo on 11/22/19.
//  Copyright © 2019 Safaray Inc. All rights reserved.
//

import UIKit

class ProTableController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()  // This works, but do not do this due to performance reason
        cell.textLabel?.text = "Here I am"
        return cell
    }
}
