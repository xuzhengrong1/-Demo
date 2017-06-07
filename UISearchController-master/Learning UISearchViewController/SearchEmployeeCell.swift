//
//  SearchEmployeeCell.swift
//  Learning UISearchViewController
//
//  Created by 许正荣 on 2017/6/7.
//  Copyright © 2017年 Mladen Bekavac. All rights reserved.
//

import Foundation
import UIKit
class SearchEmployeeCell: UITableViewCell {

    @IBOutlet weak var checkedImageView: UIImageView!
    @IBOutlet weak var employeeName: UILabel!
    
    @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
    @IBOutlet weak var telePhoneLable: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated);
        self.checkedImageView.isHidden = !selected;
    }
}

