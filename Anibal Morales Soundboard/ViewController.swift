//
//  ViewController.swift
//  Anibal Morales Soundboard
//
//  Created by Rogelio Schevenin on 3/27/18.
//  Copyright © 2018 Rogelio Schevenin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "Wallpaper")
        view.sendSubviewToBack(backgroundImageView)
    }
    
    func stopAudio() {
        audioPlayerGuatemalan.stop()
        audioPlayerChisme.stop()
        audioPlayerPapas.stop()
        audioPlayerEnamorado.stop()
        audioPlayerMijo.stop()
        audioPlayerMartin.stop()
    }
    
    
    @IBOutlet weak var clickOutput: UILabel!
    
    @IBOutlet weak var buttonGuatemalan: UIButton!
    @IBOutlet weak var buttonMartin: UIButton!
    @IBOutlet weak var buttonChisme: UIButton!
    @IBOutlet weak var buttonPapas: UIButton!
    @IBOutlet weak var buttonEnamorado: UIButton!
    @IBOutlet weak var buttonMijo: UIButton!
    @IBOutlet weak var buttonStop: UIButton!
    
    @IBAction func buttonStop(_ sender: UIButton) {
        stopAudio()
    }
    @IBAction func buttonGuatemalan(_ sender: UIButton) {
        audioPlayerGuatemalan.play()
    }
    @IBAction func buttonMartin(_ sender: UIButton) {
        audioPlayerMartin.play()
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
    
    var audioPlayerGuatemalan : AVAudioPlayer!
    var audioPlayerChisme : AVAudioPlayer!
    var audioPlayerPapas : AVAudioPlayer!
    var audioPlayerEnamorado : AVAudioPlayer!
    var audioPlayerMijo : AVAudioPlayer!
    var audioPlayerMartin: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlGuatemalan = Bundle.main.url(forResource: "guatemalan", withExtension: "mp3")
        let urlChisme = Bundle.main.url(forResource: "chisme", withExtension: "mp3")
        let urlPapas = Bundle.main.url(forResource: "papas", withExtension: "mp3")
        let urlEnamorado = Bundle.main.url(forResource: "enamorado", withExtension: "mp3")
        let urlMijo = Bundle.main.url(forResource: "mijo", withExtension: "mp3")
        let urlMartin = Bundle.main.url(forResource: "martin", withExtension: "mp3")
        
        do {
            audioPlayerGuatemalan = try AVAudioPlayer(contentsOf: urlGuatemalan!)
            audioPlayerGuatemalan.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayerMartin = try AVAudioPlayer(contentsOf: urlMartin!)
            audioPlayerMartin.prepareToPlay()
            
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

