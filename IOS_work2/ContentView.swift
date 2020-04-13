//
//  ContentView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/4.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        VStack{
            Text("梨泰院 ").font(.system(size:40)).fontWeight(.heavy)+Text("Itaewon class").font(.system(size:32)).fontWeight(.heavy).italic()
            VStack{
                if show{
                    ImageView()
                        .transition(.opacity)
                }
            }.animation(.easeInOut(duration:5))
                .onAppear {
                    self.show = true
                    
            }
            .onDisappear {
                self.show = false
                
            }
            Text("「夢想成真了，就是現在、這裡」\n\"이루고 싶은 꿈이 생겼다 지금 이곳에서\" ")
                .font(.custom("YuppyTC-Regular",size:22))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            Spacer()
                .padding(.bottom,0)
        }
            .foregroundColor(Color.purple)
            .offset(y:60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageView: View {
    var body: some View {
        Image("itaewon_cover")
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 400)
    }
}
