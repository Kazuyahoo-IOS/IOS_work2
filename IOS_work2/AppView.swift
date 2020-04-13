//
//  AppView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/4.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ZStack{
            TabView {
                ContentView()
                    .tabItem{
                        Image(systemName:"house.fill")
                        Text("主頁")
                }
                CharacterView()
                    .tabItem{
                        Image(systemName:"person.3.fill")
                        Text("角色介紹")
                }
                EpisodeView()
                    .tabItem{
                        Image(systemName:"play.rectangle.fill")
                        Text("劇情簡介")
                            .lineLimit(nil)
                }
                StillsWallView()
                    .tabItem{
                        Image(systemName:"photo.fill")
                        Text("劇照")
                }
            }
            .accentColor(.purple)
            Music()
                .offset(y:325)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
