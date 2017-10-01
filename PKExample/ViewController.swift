//
//  ViewController.swift
//  PKExample
//
//  Created by AtsuyaSato on 2017/08/18.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Create programmatically
        // let customView = CustomView(frame: self.view.frame)
        // self.view.addSubview(customView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

