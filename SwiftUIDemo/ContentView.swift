//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by KD Chen on 5/6/19.
//  Copyright © 2019 Quest Payment Systems. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    @State var viewModel = ViewModel()
    
    var body: some View {
        return NavigationView{
            List(viewModel.developers){developer in
                NavigationButton(destination: DeveloperDetail(developer: developer)){
                    ContentRow(developer: developer)
                }
            }
            .navigationBarTitle(Text("SwiftUI Demo"))
        }
        
    }
    
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
