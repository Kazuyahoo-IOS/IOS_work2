//
//  CharacterRowView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/4.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct CharacterRowView: View {
    var Char : characters
    var body: some View {
        HStack(spacing:30){
            Image(Char.Ch_name+"0")
                .resizable()
                .scaledToFill()
                .frame(width:100,height:100)
                .clipped()
                .mask(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            VStack(alignment: .leading){
                Text(Char.Ch_name)
                Text(Char.Ko_name+"飾")
            }
            Spacer()
        }
    }
}

struct CharacterRowView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRowView(Char: sweetNight[0])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
