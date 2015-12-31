//
//  SwiftListViewController.swift
//  SwiftList
//
//  Created by Studio Three  on 12/31/15.
//  Copyright © 2015 Eric Schulz. All rights reserved.
//

import UIKit

class SwiftListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myNeighborhoods = ["Loop", "River North", "Old Town", "Gold Coast", "West Loop", "South Loop", "Lakeview", "Lincoln Park", "Wicker Park"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myNeighborhoods.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = myNeighborhoods[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("listToDetailSegue", sender: self)
    }

}
