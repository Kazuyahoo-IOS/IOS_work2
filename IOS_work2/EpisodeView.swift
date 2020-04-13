//
//  EpisodeView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/6.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct EpisodeView: View {
    var body: some View {
        NavigationView
            {
                List{
                    Group{
                        ForEach(0..<16){ (index) in
                            MyView(index:index)
                        }
                    }
                }
                .navigationBarTitle("劇情簡介")
                .padding(.bottom,80)
        }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeView()
    }
}

struct MyView: View {
    var index:Int
    var body: some View {
        Section(header: CustomeHeader(name: "第"+String(index+1)+"集",red:194,green:221,blue:252)){
            NavigationLink(destination: EpisodeDetailView(Ep: EP[index])){
                EpisodeRowView(Ep: EP[index])
            }}
    }
}

struct CustomeHeader: View {
    let name: String
    let red:Double
    let green:Double
    let blue:Double
    var body: some View {
        ZStack {
            Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}
