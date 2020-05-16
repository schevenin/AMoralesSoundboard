//
//  RootPageViewController.swift
//  Anibal Morales Soundboard
//
//  Created by Rogelio Schevenin on 1/11/19.
//  Copyright © 2019 ScheveninDevOrg. All rights reserved.
//

import UIKit

class RootPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    

//    lazy var viewControllerList:[UIViewController] = {
//
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let vc1 = sb.instantiateViewController(withIdentifier: "PageOne")
//
//        return [vc1]
//
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        self.dataSource = self
//
//        if let firstViewController = viewControllerList.first {
//            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)}
        
    }
    
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//
//        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
//        let previousIndex = vcIndex - 1
//        guard previousIndex >= 0 else {return nil}
//        guard viewControllerList.count > previousIndex else {return nil}
//        return viewControllerList[previousIndex]
//
//        }
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//
//        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
//        let nextIndex = vcIndex + 1
//        guard viewControllerList.count != nextIndex else {return nil}
//        guard viewControllerList.count > nextIndex else {return nil}
//        return viewControllerList[nextIndex]
//
//        }
    
}
