//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var player : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton)
    {
        //The following line finds the right file name according to the tag attribute of the button that was clicked
//        -1 because the tags go from 1 to 7 and the array goes from 0 to 6
        var selectedSoundFileName : String = soundArray[sender.tag - 1]
        //The following lines add and set the audio playing funcionality to our program (using the AVFoundation library imported before) and will note be used since it's much easier and faster to do as in the code line above
//        if(tag == 1) {
//            playSound(Sound: "note1", type: "wav")
//        }
//        else if(tag == 2 ){
//            playSound(Sound: "note2", type: "wav")
//        }
//        else if(tag == 3 ){
//            playSound(Sound: "note3", type: "wav")
//        }
//        else if(tag == 4 ){
//            playSound(Sound: "note4", type: "wav")
//        }
//        else if(tag == 5 ){
//            playSound(Sound: "note5", type: "wav")
//        }
//        else if(tag == 6 ){
//            playSound(Sound: "note6", type: "wav")
//        }
//        else if(tag == 7 ){
//            playSound(Sound: "note7", type: "wav")
//        }
        
          playSound(Sound: selectedSoundFileName, type: "wav")
    }
    
    func playSound(Sound: String, type: String){
        let path = Bundle.main.path(forResource: Sound, ofType: type)!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        } catch {
            // error message
        }
    }
    
    
    
}





