//
//  ViewController.swift
//  Learning UISearchViewController
//
//  Created by Mladen Bekavac on 01/02/2017.
//  Copyright © 2017 Mladen Bekavac. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var data:[EXCSomeDataM] = [];
    @IBOutlet weak var someTableWithDataTV: UITableView!
    let searchController = UISearchController(searchResultsController: nil) //#3
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.data =  EXCSomeDataManager.dataArr
        self.someTableWithDataTV.rowHeight = 54;
        setupTableView()
        setupSearchController()
    }
    
    func setupTableView()
    {
        self.someTableWithDataTV.registerCell(String(describing: SearchEmployeeCell.self))
        self.someTableWithDataTV.tableFooterView = UIView(frame: CGRect.zero)
        self.someTableWithDataTV.separatorInset = UIEdgeInsets.zero
        self.someTableWithDataTV.separatorColor = UIColor.black
        
        
    }
    
    func setupSearchController()
    {
        settingUpSearchCDelegates()
        setupSCAppearance()
        
        someTableWithDataTV.tableHeaderView = searchController.searchBar
    }
    
    private func settingUpSearchCDelegates()
    {
        //#4.1
        searchController.searchResultsUpdater = self
        
        //#5.1
        searchController.searchBar.delegate = self
        
        //#6.1
        searchController.delegate = self
    }
    
    private func setupSCAppearance()
    {
        searchController.dimsBackgroundDuringPresentation = false
//        searchController.view.backgroundColor = UIColor.red
    }
}
