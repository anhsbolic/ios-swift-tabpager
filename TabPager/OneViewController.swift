//
//  OneViewController.swift
//  TabPager
//
//  Created by Anhar Solehudin on 23/03/19.
//  Copyright © 2019 Anhar Solehudin. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class OneViewController: UIViewController, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Satu")
    }

}
