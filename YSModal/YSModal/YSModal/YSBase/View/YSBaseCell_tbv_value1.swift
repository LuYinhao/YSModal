//
//  YSBaseCell_tbv_value1.swift
//  YSBase
//
//  Created by yaoshuai on 2018/9/8.
//  Copyright © 2018年 ys. All rights reserved.
//

import UIKit

open class YSBaseCell_tbv_value1: UITableViewCell {

    public private(set) weak var ys_sourceVC: UIViewController?
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
        backgroundColor = UIColor.white
        setupProperty()
        setupUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.white
        setupProperty()
        setupUI()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    open func setupProperty(){
        
    }
    
    open func setupUI(){
        
    }
    
    open func ys_setupSourceVC(_ sourceVC: UIViewController?){
        self.ys_sourceVC = sourceVC
    }
}
