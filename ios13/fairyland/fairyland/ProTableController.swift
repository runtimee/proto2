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
        return 300
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        if let reusedCell = tableView.dequeueReusableCell(withIdentifier: "ChristmasTree") {
            debugPrint("DQ DQ")
            cell = reusedCell
        } else {
            debugPrint("New New")
            cell = UITableViewCell()
        }
        cell.textLabel?.text = "Here I am"
        return cell
    }
}
