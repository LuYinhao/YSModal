//
//  YSLoadingIndicatorView_default.swift
//  YSBase
//
//  Created by 姚帅 on 2018/5/29.
//  Copyright © 2018年 ys. All rights reserved.
//

import UIKit
import SnapKit

class YSLoadingIndicatorView_default:YSLoadingIndicatorView{
    
    private lazy var loadingIndicatorView = UIActivityIndicatorView(style: .gray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(loadingIndicatorView)
        loadingIndicatorView.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func ys_startLoadingIndicatorView() {
        loadingIndicatorView.startAnimating()
    }
    
    override func ys_stopLoadingIndicatorView() {
        loadingIndicatorView.stopAnimating()
    }
}
