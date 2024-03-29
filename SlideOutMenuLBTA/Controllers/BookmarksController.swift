//
//  BookmarksController.swift
//  SlideOutMenuLBTA
//
//  Created by Brian Voong on 10/5/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class BookmarksController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this is easier for recording lessons because I don't have to register a cell onto my tableview
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
//        tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        cell.textLabel?.text = "Bookmark: \(indexPath.row)"
        return cell
    }

}
