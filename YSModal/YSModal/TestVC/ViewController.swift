//
//  ViewController.swift
//  YSModal
//
//  Created by 姚帅 on 2019/2/12.
//  Copyright © 2019 onemena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toUpAction(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "toUp")
        present(vc, animated: true, completion: nil)
    }
    @IBAction func toDownAction(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "toDown")
        present(vc, animated: true, completion: nil)
    }
    @IBAction func toLeftAction(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "toLeft")
        present(vc, animated: true, completion: nil)
    }
    @IBAction func toRightAction(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "toRight")
        present(vc, animated: true, completion: nil)
    }
}
