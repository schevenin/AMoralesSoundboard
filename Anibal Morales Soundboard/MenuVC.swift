//
//  MenuVC.swift
//  Anibal Morales Soundboard
//
//  Created by Rogelio Schevenin on 3/27/18.
//  Copyright © 2018 Rogelio Schevenin. All rights reserved.
//

import Foundation
import UIKit

enum gameType {
    case easy
    case medium
    case hard
    case player2
}

class MenuVC : UIViewController {
    
    
    @IBAction func Player2(_ sender: Any) {
        moveToGame(game: .player2)
    }
    
    @IBAction func Medium(_ sender: Any) {
        moveToGame(game: .medium)
        
    }
    
    func moveToGame(game : gameType) {
        let gameVC = self.storyboard?.instantiateViewController(withIdentifier: "gameVC") as! GameViewController
        
        currentGameType = game

        self.navigationController?.pushViewController(gameVC, animated: true)
    }
}
