//
//  VideoOy.swift
//  BitirmeProjesi
//
//  Created by hamid on 29.12.24.
//


import SwiftUI
import AVKit

struct VideoPlayerToplu: View {
    var videoad : String
    var body: some View {
        let videoURL = Bundle.main.url(forResource: videoad, withExtension: "mp4")! // Video dosyasını bul

        VideoPlayer(player: AVPlayer(url: videoURL))
            .frame(height: 200)
            .cornerRadius(12)
            .shadow(radius: 8)
            .padding()
    }
    
}


