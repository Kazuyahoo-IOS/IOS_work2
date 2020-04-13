//
//  CharacterView.swift
//  IOS_work2
//
//  Created by 王瑋 on 2020/4/4.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct CharacterView: View {
    var body: some View {
        NavigationView
            {
                List{
                    Section(header: CustomeHeader(name:"甜粟",red:245,green:219,blue:79)){
                        ForEach(0..<sweetNight.count){(index) in
                            NavigationLink(destination: CharDetailView(Char: sweetNight[index])){
                                CharacterRowView(Char: sweetNight[index])
                            }}}
                    Section(header: CustomeHeader(name:"長家",red:245,green:219,blue:79)){
                        ForEach(0..<jangga.count){(index) in
                            NavigationLink(destination: CharDetailView(Char: jangga[index])){
                                CharacterRowView(Char: jangga[index])
                            }}}
                }
                .navigationBarTitle("角色介紹")
                .padding(.bottom,80)
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
