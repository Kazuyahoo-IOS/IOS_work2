//
//  StillsWallView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/6.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct StillsWallView: View {
    func num(i:Int,j:Int)->Int{
        i*2+j
    }
    var body: some View {
        List {
            ScrollView(.horizontal){
                HStack(spacing: 5) {
                    ForEach(0 ..< 9) { (item) in
                        Image("pic"+String(item))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400)
                            .clipped()
                    }
                }
            }
            .frame(height: 300)
            .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
            
            ForEach(0..<8) { (i) in
                HStack(spacing:5) {
                    ForEach(1..<3) { (j) in
                        Image(String(self.num(i:i,j:j)))
                            .resizable()
                            .scaledToFill()
                            .clipped()
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
        }
        .onAppear {
            UITableView.appearance().separatorColor = .clear
        }
        .padding(.bottom,80)
    }
}

struct StillsWallView_Previews: PreviewProvider {
    static var previews: some View {
        StillsWallView()
    }
}
