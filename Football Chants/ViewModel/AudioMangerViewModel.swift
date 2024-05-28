//
//  AudioMangerViewModel.swift
//  Football Chants
//
//  Created by Ерош Айтжанов on 27.03.2024.
//

import Foundation
import AVKit

class AudioMangerViewModel {
    
    private var chantAudioPlayer: AVAudioPlayer?
    
    func playback(_ team: Team) {
        if team.isPlaying {
            chantAudioPlayer?.stop()
        } else {
            guard let path = Bundle.main.path(forResource: "\(team.id.chantFile).mp3", ofType: nil) else { return }
            let url = URL(fileURLWithPath: path)
            do {
                chantAudioPlayer = try AVAudioPlayer(contentsOf: url)
                chantAudioPlayer?.numberOfLoops = -1
                chantAudioPlayer?.play()
            } catch {
                print(error)
            }
        }
    }
}
