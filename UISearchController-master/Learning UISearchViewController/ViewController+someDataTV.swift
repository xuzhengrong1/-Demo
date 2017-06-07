//
//  ViewController+someDataTV.swift
//  Learning UISearchViewController
//
//  Created by Mladen Bekavac on 01/02/2017.
//  Copyright © 2017 Mladen Bekavac. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
         let  cell = tableView.dequeueCelllForReuse(SearchEmployeeCell.self, indexPath: indexPath)   as SearchEmployeeCell

     
        cell.employeeName.text = data[indexPath.row].someDataName;
   
        if indexPath.row == 0 {
            cell.centerYConstraint.constant = 0;
        }
        
        return cell
    }
    

    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.data.count;
    }
}
