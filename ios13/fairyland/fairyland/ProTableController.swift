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
        let reusedCell = tableView.dequeueReusableCell(withIdentifier: "ChristmasTree")
        let cell = reusedCell!  // This fails because there is no recycled cells
        cell.textLabel?.text = "Here I am"
        return cell
    }
}
