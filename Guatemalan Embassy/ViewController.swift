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
        audioPlayer1.stop()
        audioPlayer2.stop()
        audioPlayer3.stop()
        audioPlayer4.stop()
        audioPlayer5.stop()
        audioPlayer6.stop()
    }
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var copyright: UILabel!
    @IBOutlet weak var morales: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBAction func button1(_ sender: UIButton) {
        stopAudio()
        audioPlayer1.play()
    }
    @IBAction func button2(_ sender: UIButton) {
        stopAudio()
        audioPlayer2.play()
    }
    @IBAction func button3(_ sender: UIButton) {
        stopAudio()
        audioPlayer3.play()
    }
    @IBAction func button4(_ sender: UIButton) {
        stopAudio()
        audioPlayer4.play()
    }
    @IBAction func button5(_ sender: UIButton) {
        stopAudio()
        audioPlayer5.play()
    }
    @IBAction func button6(_ sender: UIButton) {
        stopAudio()
        audioPlayer6.play()
    }
    var audioPlayer1 : AVAudioPlayer!
    var audioPlayer2 : AVAudioPlayer!
    var audioPlayer3 : AVAudioPlayer!
    var audioPlayer4 : AVAudioPlayer!
    var audioPlayer5 : AVAudioPlayer!
    var audioPlayer6 : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url1 = Bundle.main.url(forResource: "1", withExtension: "mp3")
        let url2 = Bundle.main.url(forResource: "2", withExtension: "mp3")
        let url3 = Bundle.main.url(forResource: "3", withExtension: "mp3")
        let url4 = Bundle.main.url(forResource: "4", withExtension: "mp3")
        let url5 = Bundle.main.url(forResource: "5", withExtension: "mp3")
        let url6 = Bundle.main.url(forResource: "6", withExtension: "mp3")
        
        do {
            audioPlayer1 = try AVAudioPlayer(contentsOf: url1!)
            audioPlayer1.prepareToPlay()
        
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayer2 = try AVAudioPlayer(contentsOf: url2!)
            audioPlayer2.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayer3 = try AVAudioPlayer(contentsOf: url3!)
            audioPlayer3.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayer4 = try AVAudioPlayer(contentsOf: url4!)
            audioPlayer4.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayer5 = try AVAudioPlayer(contentsOf: url5!)
            audioPlayer5.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
        do {
            audioPlayer6 = try AVAudioPlayer(contentsOf: url6!)
            audioPlayer6.prepareToPlay()
            
        }catch let error as NSError {
            print(error.debugDescription)
        }
    }
}

