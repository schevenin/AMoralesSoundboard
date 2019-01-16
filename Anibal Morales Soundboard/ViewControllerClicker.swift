//
//  ViewControllerClicker.swift
//  Anibal Morales Soundboard
//
//  Created by Rogelio Schevenin on 1/15/19.
//  Copyright © 2019 Schevenin Developer Organization. All rights reserved.
//

import UIKit

class ViewControllerClicker: UIViewController {
    
    @IBOutlet weak var clickOutput: UILabel!
    
    var click = 0
    
    @IBAction func clickerButton(_ sender: Any) {
        click = click + 1
        clickOutput.text = "\(click)"
    }
    
    
    func error() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clickOutput.text = "\(click)"
    }
}
