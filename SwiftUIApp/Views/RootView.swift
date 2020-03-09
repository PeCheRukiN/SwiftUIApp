//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 07.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI



struct RootView: View {
    
    @EnvironmentObject var foodListViewModel: FoodListViewModel
    
    @State var selectedTabIndex = 0
    @State var shoulsShowItem: Bool = false
    
    var body: some View {
        
        TabView(selection: $selectedTabIndex) {
            
            FirstView(destinationTabIndex: $selectedTabIndex,
                      shouldShowFoodItem: $foodListViewModel.shouldShowFirstItem)
                .tag(0)
                .tabItem {
                    VStack {
                        Text("First view")
                        Image(systemName: "square.and.arrow.up")
                    }
            }
            
            FoodListView()
                .environmentObject(foodListViewModel)
                .tag(1)
                .tabItem {
                    VStack {
                        Text("Food List")
                        Image(systemName: "flame.fill")
                    }
            }
            
            AboutAppView()
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("About")
                    }
            }
            
        } // TabView
    }
}
