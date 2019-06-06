//
//  ContentRow.swift
//  SwiftUIDemo
//
//  Created by KD Chen on 6/6/19.
//  Copyright © 2019 Quest Payment Systems. All rights reserved.
//

import SwiftUI

struct ContentRow: View{
    var developer: Developer
    
    var body: some View {
        HStack{
            Text("\(developer.id) \(developer.name)")
        }
        
    }
}

struct Developer: Identifiable {
    var id: Int
    var name: String
}
