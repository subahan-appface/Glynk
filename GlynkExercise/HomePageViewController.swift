//
//  HomePageViewController.swift
//  GlynkExercise
//
//  Created by Tools on 16/12/17.
//  Copyright © 2017 subahan. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class HomePageViewController: ButtonBarPagerTabStripViewController {
    
    var isReload = false

    override func viewDidLoad() {
        // set up style before super view did load is executed
//        settings.style.buttonBarBackgroundColor = .blue
        settings.style.selectedBarBackgroundColor = .orange
        //-
        super.viewDidLoad()
        
//        buttonBarView.removeFromSuperview()
//        navigationController?.navigationBar.addSubview(buttonBarView)
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            
            oldCell?.label.textColor = UIColor(white: 1, alpha: 0.6)
            newCell?.label.textColor = .white
            
            if animated {
                UIView.animate(withDuration: 0.1, animations: { () -> Void in
                    newCell?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    oldCell?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
                })
            } else {
                newCell?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                oldCell?.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
       override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let viewController1 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController1.view
        viewController1.screenName.text = "Sports"
        let viewController2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController2.view
        viewController2.screenName.text = "Science & Technologies"
        let viewController3 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController3.view
        viewController3.screenName.text = "Design"
        let viewController4 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController4.view
        viewController4.screenName.text = "Politics"
        let viewController5 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController5.view
        viewController5.screenName.text = "Movies"
        let viewController6 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomePage") as! ViewController
        _ = viewController6.view
        viewController6.screenName.text = "Business"
        
        return [viewController1,viewController2,viewController3,viewController4,viewController5,viewController6]
    }
    override func configureCell(_ cell: ButtonBarViewCell, indicatorInfo: IndicatorInfo) {
        super.configureCell(cell, indicatorInfo: indicatorInfo)
        cell.backgroundColor = #colorLiteral(red: 0.02745098039, green: 0.7254901961, blue: 0.6078431373, alpha: 1)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
