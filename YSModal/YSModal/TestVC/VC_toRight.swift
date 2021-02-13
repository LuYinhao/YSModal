//
//  VC_toRight.swift
//  YSModal
//
//  Created by 姚帅 on 2019/2/13.
//  Copyright © 2019 onemena. All rights reserved.
//

import UIKit

class VC_toRight: YSModal_presentedVC {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        print("VC_toRight释放了")
    }
    
    @IBAction func dismissAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func ys_setupMaskView() -> (bgC: UIColor, alpha: CGFloat) {
        return (UIColor.black, 0.5)
    }
    
    override func ys_setupDirectionAndLength() -> (direction: YSModal_direction, length: CGFloat) {
        return (.toRight, 200)
    }
}
