//
//  ViewController.swift
//  TabPager
//
//  Created by Anhar Solehudin on 23/03/19.
//  Copyright © 2019 Anhar Solehudin. All rights reserved.
//

import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {
    
    let tabColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)

    override func viewDidLoad() {
        settings.style.buttonBarBackgroundColor = .brown
        settings.style.buttonBarItemBackgroundColor = .gray
        settings.style.selectedBarBackgroundColor = tabColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.tabColor
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "satu")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "dua")
        
        return [child_1, child_2]
    }


}

