//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton)
    {
        //The following line is meant to display the tag attribute of the pressed button
        var tag = sender.tag
        //The following lines add and set the audio playing funcionality to our program (using the AVFoundation library imported before)
        if(tag == 1) {
            playSound(Sound: "note1", type: "wav")
        }
        else if(tag == 2 ){
            playSound(Sound: "note2", type: "wav")
        }
        else if(tag == 3 ){
            playSound(Sound: "note3", type: "wav")
        }
        else if(tag == 4 ){
            playSound(Sound: "note4", type: "wav")
        }
        else if(tag == 5 ){
            playSound(Sound: "note5", type: "wav")
        }
        else if(tag == 6 ){
            playSound(Sound: "note6", type: "wav")
        }
        else if(tag == 7 ){
            playSound(Sound: "note7", type: "wav")
        }
        
    }
    
    func playSound(Sound: String, type: String){
        let path = Bundle.main.path(forResource: Sound, ofType: type)!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            // error message
        }
    }
    
    
    
}





