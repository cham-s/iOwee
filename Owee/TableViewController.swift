//
//  TableViewController.swift
//  Owee
//
//  Created by dash-c on 01/12/14.
//  Copyright (c) 2014 StelarTechnology. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var owees = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bill = Ower(firstName: "Billy", lastName: "Joe", email: "somemail@gmail.com",
            phone: "111-111-111", address: "13 Street")
        var pull = Item(ower: bill, object: "pull", value: "56", startDate: "12/12/12",
            dueDate: "13/13/13", note: "carefull", image: UIImage(named: "sweat.png")!)
        
        for x in 0...6 {
            owees.append(pull)
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return owees.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as TableViewCell
        
        let owee = owees[indexPath.row]
        // Configure the cell...
        cell.configure(nameText: owee.ower.firstName, statusText: owee.status, dateText: owee.startDate, priceText: owee.value)
        
        
        return cell
    }

}
