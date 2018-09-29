//
//  MenuController.swift
//  SlideOutMenuLBTA
//
//  Created by Brian Voong on 9/25/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class MenuController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .blue
        
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
//        self.view.addGestureRecognizer(panGesture)
    }
    
//    @objc func handlePan(gesture: UIPanGestureRecognizer) {
//        let translation = gesture.translation(in: view)
//        let x = translation.x + 300
//        view.transform = CGAffineTransform(translationX: x, y: 0)
//        // try to fetch the Red Home Controller through the main keywindow somehow
//        // if you try to do this, your code will be a little crazy and very very unmaintainable
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Menu Item Row: \(indexPath.row)"
        return cell
    }

}
