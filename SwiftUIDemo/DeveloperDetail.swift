//
//  DeveloperDetail.swift
//  SwiftUIDemo
//
//  Created by KD Chen on 6/6/19.
//  Copyright © 2019 Quest Payment Systems. All rights reserved.
//

import SwiftUI

struct DeveloperDetail: View{
    var developer: Developer
    var body: some View{
        
        VStack{
            Image("ninja")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(100)
            Text("Detail: \(developer.name)")
            Spacer()
        }
       
    }
}

