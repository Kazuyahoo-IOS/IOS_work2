//
//  Music.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/12.
//  Copyright © 2020 王瑋. All rights reserved.
//
import SwiftUI
import AVFoundation
import MediaPlayer

struct Music: View {
    @State var play = true
    //@State var looper: AVPlayerLooper?
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    var body: some View {
        HStack{
            Image("img_music")
                .resizable()
                .frame(width:50,height:50)
                .scaledToFill()
                .padding(.trailing,40)
            Text("OST Itaewon Class")
                .font(.system(size:22))
                .bold()
                .foregroundColor(Color.white)
            Spacer()
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"OST Itaewon Class (Full album Part1_13) 이태원 클라쓰 OST",withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                //self.looper = AVPlayerLooper(player: self.player, templateItem: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                self.commandCenter.playCommand.addTarget {  event in
                    if self.player.rate == 0.0 {
                        self.player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                self.commandCenter.pauseCommand.addTarget {  event in
                    if self.player.rate == 1.0 {
                        self.player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color.purple)
            }
        }
        .padding(10)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red:232/255,green:175/255,blue:237/255), Color(red:150/255,green:243/255,blue:252/255)]), startPoint: UnitPoint(x: 0.4, y: 0.4), endPoint: UnitPoint(x: 1, y: 1)))
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        Music()
    }
}

