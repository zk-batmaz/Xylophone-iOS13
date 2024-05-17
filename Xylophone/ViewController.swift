//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(pressedButton: sender.currentTitle)
        sender.isUserInteractionEnabled = false
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { _ in
            sender.isUserInteractionEnabled = true
        })
        
    }

    
    func playSound(pressedButton: String?) {
        let url = Bundle.main.url(forResource: pressedButton, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

