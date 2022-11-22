//
//  ViewController.swift
//  Bang
//
//  Created by Luis Garcia on 21/11/22.
//

import UIKit
import AVKit

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var play : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        play?.delegate = self
        
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print("Sacudir")
        view.backgroundColor = .orange
        bangAudio()
    }
    
    func bangAudio(){
        let urlB = URL(string: Bundle.main.path(forResource: "loud_bang", ofType: "mp3")!)!
        play = try! AVAudioPlayer(contentsOf: urlB)
        play?.prepareToPlay()
        play?.play()
        
    
        
        
        
    }
    

    
    


}

