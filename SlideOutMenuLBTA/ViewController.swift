//
//  ViewController.swift
//  SlideOutMenuLBTA
//
//  Created by Brian Voong on 9/25/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .red
        setupNavigationItems()
    }
    
    @objc func handleOpen() {
        print("Opening menu...")
        
        // how do we add a ViewController instead of just a plain UIView?
        let vc = MenuController()
//        vc.view.backgroundColor = .blue
        
        vc.view.frame = CGRect(x: 0, y: 0, width: 300, height: self.view.frame.height)
        
        // how do i know of the existence of this code?
        // StackOverflow, Blog Posts, Open Source Projects
        
        let mainWindow = UIApplication.shared.keyWindow
        mainWindow?.addSubview(vc.view)
        
//        view.addSubview(vc.view)
        
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//        blueView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        view.addSubview(blueView)
    }
    
    @objc func handleHide() {
        print("Hiding menu...")
    }
    
    fileprivate func setupNavigationItems() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        
        cell.textLabel?.text = "Row: \(indexPath.row)"
        
        return cell
        
    }

}

