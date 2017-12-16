//
//  ViewController.swift
//  GlynkExercise
//
//  Created by Tools on 16/12/17.
//  Copyright © 2017 subahan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: UIViewController,IndicatorInfoProvider {
    @IBOutlet weak var screenName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: screenName?.text ?? "")
    }
}

