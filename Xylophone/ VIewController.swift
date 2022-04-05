//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
   let soundarray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7" ]
    var audioplayer: AVAudioPlayer!
    var selectedsoundfilename : String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedsoundfilename = soundarray[sender.tag - 1]
        print(selectedsoundfilename)

        playsound()
        
        
    }
        
        
    func playsound(){
        
        let soundurl = Bundle.main.url(forResource: selectedsoundfilename , withExtension: "wav")

        
        
        
        do {
            audioplayer = try AVAudioPlayer(contentsOf: soundurl!)
//            guard let player = player else { return }
//            player.prepareToPlay()
//            player.play()
        }
        catch {
            print(error)
        }
        audioplayer.play()
        
    }



}

    

