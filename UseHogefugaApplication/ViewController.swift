//
//  ViewController.swift
//  UseHogefugaApplication
//
//  Created by 清 貴幸 on 2016/01/23.
//  Copyright © 2016年 Hoge, inc. All rights reserved.
//

import UIKit
import HOGEFuga

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        HOGEFugaService.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

