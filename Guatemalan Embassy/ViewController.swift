//
//  ViewController.swift
//  Guatemalan Embassy
//
//  Created by Rogelio Schevenin on 3/27/18.
//  Copyright © 2018 Rogelio Schevenin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    func stopAudio() {
        audioPlayerEmbassy.stop()
        audioPlayerChisme.stop()
        audioPlayerPapas.stop()
        audioPlayerEnamorado.stop()
        audioPlayerMijo.stop()
    }
    
    @IBOutlet weak var copyright: UILabel!
    @IBOutlet weak var buttonEmbassy: UIButton!
    @IBOutlet weak var buttonChisme: UIButton!
    @IBOutlet weak var buttonPapas: UIButton!
    @IBOutlet weak var buttonEnamorado: UIButton!
    @IBOutlet weak var buttonMijo: UIButton!
    @IBOutlet weak var buttonStop: UIButton!
    
    @IBAction func buttonStop(_ sender: UIButton) {
        stopAudio()
    }
    @IBAction func buttonEmbassy(_ sender: UIButton) {
        audioPlayerEmbassy.play()
    }
    @IBAction func buttonChisme(_ sender: UIButton) {
        audioPlayerChisme.play()
    }
    @IBAction func buttonPapas(_ sender: UIButton) {
        audioPlayerPapas.play()
    }
    @IBAction func buttonEnamorado(_ sender: UIButton) {
        audioPlayerEnamorado.play()
    }
    @IBAction func buttonMijo(_ sender: UIButton) {
        audioPlayerMijo.play()
    }
    var audioPlayerEmbassy : AVAudioPlayer!
    var audioPlayerChisme : AVAudioPlayer!
    var audioPlayerPapas : AVAudioPlayer!
    var audioPlayerEnamorado : AVAudioPlayer!
    var audioPlayerMijo : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let urlEmbassy = Bundle.main.url(forResource: "embassy", withExtension: "mp3")
        let urlChisme = Bundle.main.url(forResource: "chisme", withExtension: "mp3")
        let urlPapas = Bundle.main.url(forResource: "papas", withExtension: "mp3")
        let urlEnamorado = Bundle.main.url(forResource: "enamorado", withExtension: "mp3")
        let urlMijo = Bundle.main.url(forResource: "mijo", withExtension: "mp3")
        
        do {
            audioPlayerEmbassy = try AVAudioPlayer(contentsOf: urlEmbassy!)
            audioPlayerEmbassy.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayerChisme = try AVAudioPlayer(contentsOf: urlChisme!)
            audioPlayerChisme.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayerPapas = try AVAudioPlayer(contentsOf: urlPapas!)
            audioPlayerPapas.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayerEnamorado = try AVAudioPlayer(contentsOf: urlEnamorado!)
            audioPlayerEnamorado.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayerMijo = try AVAudioPlayer(contentsOf: urlMijo!)
            audioPlayerMijo.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
    }
}

