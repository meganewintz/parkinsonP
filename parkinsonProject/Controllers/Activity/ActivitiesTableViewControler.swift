//
//  ActivitiesSetViewControler.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 05/03/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation
import UIKit

class ActivitiesSetViewControler : NSObject, UITableViewDataSource {
    
    var tableView: UITableView!
    var activities: ActivitySet!
    
    init(tableView: UITableView) {
        super.init()
        self.tableView = tableView
        self.tableView.dataSource = self
    }
    
    // MARK: - Table view data source
    
    /// <#Description#>
    ///
    /// - Parameter tableView: <#tableView description#>
    /// - Returns: <#return value description#>
    func numberOfSections(in tableView: UITableView) -> Int {
        // Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //  Incomplete implementation, return the number of rows
        return self.activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell", for: indexPath) as! ActivityTableViewCell
        
        return configure(cell: cell, atIndexPath: indexPath)
        
    }
    
    //-------------------------------------------------------------------------------------------------
    // MARK: - PersonSetViewModelDelegate
    func dataSetChanged(){
        self.tableView.reloadData()
    }
    func personChanged(at: IndexPath){
        self.tableView.beginUpdates()
        self.tableView.reloadRows(at: [at], with: UITableViewRowAnimation.fade)
        self.tableView.endUpdates()
    }
    func personAdded(at: IndexPath){
        self.tableView.beginUpdates()
        self.tableView.insertRows(at: [at], with: UITableViewRowAnimation.middle)
        self.tableView.endUpdates()
        //      self.tableView.reloadData()
    }
    
    //-------------------------------------------------------------------------------------------------
    // MARK: - convenience methods
    
    @discardableResult
    private func configure(cell: ActivityTableViewCell, atIndexPath indexPath: IndexPath) -> UITableViewCell{
        return cell
    }
}
