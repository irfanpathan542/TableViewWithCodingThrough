//
//  ViewController.swift
//  CustomView
//
//  Created by iFlame on 5/30/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController  ,UITableViewDelegate, UITableViewDataSource{
    
    var iflame = ["Sunil" , "irfan" , "Bansi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        var myTable: UITableView = UITableView()
        self.view = myTable
        myTable.delegate = self
        myTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return iflame.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iflame.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        cell.textLabel?.text = iflame[indexPath.row]
        return cell
    }

}

