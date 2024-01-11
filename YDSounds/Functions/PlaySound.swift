//
//  PlaySound.swift
//  YDSounds
//
//  Created by Jonathan Boyd on 10/31/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            try AVAudioSession.sharedInstance().setCategory(
                AVAudioSession.Category.playback
            )
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("can't find sound")
        }
    }
}
