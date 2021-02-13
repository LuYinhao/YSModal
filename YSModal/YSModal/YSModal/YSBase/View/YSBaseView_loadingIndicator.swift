//
//  YSBaseView_loadingIndicator
//  YSBase
//
//  Created by yaoshuai on 2018/5/29.
//  Copyright © 2018年 ys. All rights reserved.
//

import UIKit

class YSBaseView_loadingIndicator: UIView {
    
    // loadingIndicatorView
    private var loadingIndicatorView:YSLoadingIndicatorView?
    
    // 需要自定义loadingIndicatorView，重写这个方法
    open func ys_createLoadingIndicatorView() -> YSLoadingIndicatorView{
        return YSLoadingIndicatorView_default(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    }
    
    // 以下2个方法外界直接调用
    public func ys_startLoadingIndicatorView(){
        if loadingIndicatorView == nil{
            loadingIndicatorView = ys_createLoadingIndicatorView()
        }
        if !subviews.contains(loadingIndicatorView!){
            addSubview(loadingIndicatorView!)
        }
        bringSubviewToFront(loadingIndicatorView!)
        loadingIndicatorView!.snp.remakeConstraints { (make) in
            make.center.equalTo(self)
        }
        
        loadingIndicatorView!.ys_startLoadingIndicatorView()
    }
    
    public func ys_stopLoadingIndicatorView(){
        loadingIndicatorView?.ys_stopLoadingIndicatorView()
        loadingIndicatorView?.removeFromSuperview()
        loadingIndicatorView = nil
    }
}
