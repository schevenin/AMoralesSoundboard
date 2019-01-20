//
//  MenuVC.swift
//  Anibal Morales Soundboard
//
//  Created by Rogelio Schevenin on 3/27/18.
//  Copyright © 2018 Rogelio Schevenin. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit


var currentGameType = gameType.medium



class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tabBarController?.tabBar.isHidden = true
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                scene.size = view.bounds.size
                
                // Present the scene
                view.presentScene(scene)
            }
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = false
        }
        
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
