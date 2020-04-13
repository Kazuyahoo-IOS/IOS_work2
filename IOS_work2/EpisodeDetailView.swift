//
//  EpisodeDetailView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/6.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct EpisodeDetailView: View {
    var Ep : episode
    var body: some View {
        ScrollView{
            VStack{
                Image(Ep.Num+"b")
                    .resizable()
                    .scaledToFill()
                    .padding()
                    .frame(width:400, height:300)
                Spacer()
                Text(Ep.Plot)
                    .padding(.bottom)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Spacer(minLength:50)
                Text(Ep.Good_sen_ch)
                    .multilineTextAlignment(.leading)
                    .font(.custom("YuppyTC-Regular",size:18))
                Spacer()
                Text(Ep.Good_sen_ko)
                    .multilineTextAlignment(.trailing)
                    .font(.custom("YuppyTC-Regular",size:18))
                
            }
            .navigationBarTitle("第"+Ep.Num+"集")
        }
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(Ep:EP[15])
    }
}
