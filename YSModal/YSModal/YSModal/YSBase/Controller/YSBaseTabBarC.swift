//
//  YSSuperTabBarC.swift
//  YSExtension
//
//  Created by 姚帅 on 2018/4/16.
//  Copyright © 2018年 YS. All rights reserved.
//

import UIKit

open class YSBaseTabBarC: UITabBarController {
    
    private var viewWillAppear_firstTime = true
    private var viewDidAppear_firstTime = true
    private var viewWillDisappear_firstTime = true
    private var viewDidDisappear_firstTime = true
    private var viewDidLayoutSubviews_firstTime = true
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        init_execute()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        init_execute()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWillAppear_firstTime = true
        viewDidAppear_firstTime = true
        viewWillDisappear_firstTime = true
        viewDidDisappear_firstTime = true
        viewDidLayoutSubviews_firstTime = true
        
        viewDidLoad_0_setupProperty()
        viewDidLoad_1_setupNavigation()
        viewDidLoad_2_setupUI()
        viewDidLoad_3_loadData()
        viewDidLoad_4_otherThings()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if viewWillAppear_firstTime{
            viewWillAppear_firstTime = false
            viewWillAppear_first()
        } else{
            viewWillAppear_first_not()
        }
        viewWillAppear_every()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if viewDidAppear_firstTime{
            viewDidAppear_firstTime = false
            viewDidAppear_first()
        } else{
            viewDidAppear_first_not()
        }
        viewDidAppear_every()
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if viewWillDisappear_firstTime{
            viewWillDisappear_firstTime = false
            viewWillDisappear_first()
        } else{
            viewWillDisappear_first_not()
        }
        viewWillDisappear_every()
    }
    
    open override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if viewDidDisappear_firstTime{
            viewDidDisappear_firstTime = false
            viewDidDisappear_first()
        } else{
            viewDidDisappear_first_not()
        }
        viewDidDisappear_every()
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if viewDidLayoutSubviews_firstTime{
            viewDidLayoutSubviews_firstTime = false
            viewDidLayoutSubviews_first()
        } else{
            viewDidLayoutSubviews_first_not()
        }
        viewDidLayoutSubviews_every()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    // MARK: - init 与 viewDidLoad 的一些扩展方法
    
    open func init_execute(){
        
    }
    
    open func viewDidLoad_0_setupProperty(){
        
    }
    
    open func viewDidLoad_1_setupNavigation(){
        
    }
    
    open func viewDidLoad_2_setupUI(){
        
    }
    
    open func viewDidLoad_3_loadData(){
        
    }
    
    open func viewDidLoad_4_otherThings(){
        
    }
    
    // MARK: - 自定义的一些重复执行的方法
    
    /// 只在第一次执行
    open func viewWillAppear_first(){
        
    }
    
    /// 非第一次执行
    open func viewWillAppear_first_not(){
        
    }
    
    /// 每次都执行
    open func viewWillAppear_every(){
        
    }
    
    /// 只在第一次执行
    open func viewDidAppear_first(){
        
    }
    
    /// 非第一次执行
    open func viewDidAppear_first_not(){
        
    }
    
    /// 每次都执行
    open func viewDidAppear_every(){
        
    }
    
    /// 只在第一次执行
    open func viewWillDisappear_first(){
        
    }
    
    /// 非第一次执行
    open func viewWillDisappear_first_not(){
        
    }
    
    /// 每次都执行
    open func viewWillDisappear_every(){
        
    }
    
    /// 只在第一次执行
    open func viewDidDisappear_first(){
        
    }
    
    /// 非第一次执行
    open func viewDidDisappear_first_not(){
        
    }
    
    /// 每次都执行
    open func viewDidDisappear_every(){
        
    }
    
    /// 只在第一次执行
    open func viewDidLayoutSubviews_first(){
        
    }
    
    /// 非第一次执行
    open func viewDidLayoutSubviews_first_not(){
        
    }
    
    /// 每次都执行
    open func viewDidLayoutSubviews_every(){
        
    }
    
    // MARK: - 添加弹框视图
    
    /// 添加弹框视图
    ///
    /// - Parameters:
    ///   - dialogView: 弹框视图
    ///   - selectedIndex: 当前tab索引
    ///   - completion: 添加是否成功回调
    public func ys_addDialogView(dialogView: UIView, selectedIndex: Int, complete: ((Bool) -> ())?){
        if self.selectedIndex == selectedIndex && !view.subviews.contains(dialogView){
            view.addSubview(dialogView)
            complete?(true)
        } else{
            complete?(false)
        }
    }
}
