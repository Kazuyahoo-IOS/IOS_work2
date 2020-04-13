//
//  EpisodeRowView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/6.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct EpisodeRowView: View {
    var Ep : episode
    var body: some View {
        HStack{
            Image(Ep.Num+"a")
                .resizable()
                .scaledToFill()
                .frame(width:190,height:150)
                .clipped()
            Text(Ep.Plot)
                .font(.system(size:22))
                .padding()
            Spacer()
        }
        .frame(width:350,height:150)
        .background(LinearGradient(gradient: Gradient(colors: [Color(red:232/255,green:175/255,blue:237/255), Color(red:150/255,green:243/255,blue:252/255)]), startPoint: UnitPoint(x: 0.5, y: 0.3), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
    }
}

struct EpisodeRowView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeRowView(Ep: EP[0])
            .previewLayout(.fixed(width: 380, height: 150))
    }
}
