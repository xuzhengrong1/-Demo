//
//  ViewController+SearchController.swift
//  Learning UISearchViewController
//
//  Created by Mladen Bekavac on 01/02/2017.
//  Copyright © 2017 Mladen Bekavac. All rights reserved.
//

import UIKit

extension ViewController: UISearchResultsUpdating, UISearchBarDelegate, UISearchControllerDelegate //#4.0 #5.0 #6.0
{
    func updateSearchResults(for searchController: UISearchController)
    {
        print(" Update working")
    }
    
    func willDismissSearchController(_ searchController: UISearchController)
    {
        print(" willDismissSearchController")
    }
    
    func willPresentSearchController(_ searchController: UISearchController)
    {
        print(" willPresentSearchController")
    }
    
    func presentSearchController(_ searchController: UISearchController)
    {
        print(" presentSearchController")
    }
    
    func didPresentSearchController(_ searchController: UISearchController)
    {
        print(" didPresentSearchController")
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
    {
        
        

        print(" searchBarTextDidBeginEditing")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let arr  = EXCSomeDataManager.dataArr.filter { (element) -> Bool in
            (element.someDataName?.contains(searchBar.text!))!;
        }
        self.data = arr
        self.someTableWithDataTV.reloadData();
    }
}
