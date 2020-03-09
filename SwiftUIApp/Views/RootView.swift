//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 07.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            
            List {
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .tabItem {
                Text("List")
                Image("")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
