//
//  CharDetailView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/4.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct CharDetailView: View {
    var Char : characters
    var body: some View {
        ScrollView{
            VStack{
                Image(Char.Ch_name+"1")
                    .resizable()
                    .frame(width:400, height:400)
                Text(Char.Ko_name+"飾")
                    .padding(.leading,150)
                Spacer()
                Text("角色簡介")
                    .font(.title)
                Spacer()
                Text(Char.Intro)
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.leading)
            }
            .navigationBarTitle(Char.Ch_name)
        }
    }
}

struct CharDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharDetailView(Char:sweetNight[1])
    }
}
