//
//  YSBaseCell_colv_headerFooter.swift
//  YSBase
//
//  Created by 姚帅 on 2019/1/25.
//  Copyright © 2019 ys. All rights reserved.
//

import UIKit

class YSBaseCell_colv_headerFooter: UICollectionReusableView {
    
    public private(set) weak var ys_sourceVC: UIViewController?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
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
