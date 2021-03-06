//
//  FirstViewController.swift
//  ToDoList2
//
//  Created by Bettina on 2/13/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var listTableView: UITableView!
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
        }
        
        listTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return items.count
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "listItemCell")
        //cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.text = "pack banana as snack"
        return cell
    }
}

