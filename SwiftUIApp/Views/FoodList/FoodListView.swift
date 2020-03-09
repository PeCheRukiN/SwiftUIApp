//
//  ListView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI
import Combine

struct FoodListView: View {
    
    @EnvironmentObject var viewModel: FoodListViewModel
    
    @State var isFavoritesShown = false
        
    var body: some View {
        NavigationView {
            if viewModel.isLoading {
                ActivityIndicatorView()
            } else {
                VStack {
                    NavigationLink(destination: FoodView(
                        foodName: self.viewModel.foodList.first?.name ?? "foodName",
                        description: self.viewModel.foodList.first?.description ?? "foodDescription"),
                                   isActive: self.$viewModel.shouldShowFirstItem) {
                                    Text("foodName")
                    }.hidden()
                    List {
                        
                        FilterView(isFavoritesShowed: $isFavoritesShown)
                            .environmentObject(viewModel)
                        ForEach(viewModel.foodList) { food in
                            if !self.isFavoritesShown || food.isFavorite {
                                NavigationLink(destination: FoodView(foodName: food.name, description: food.description), label:  {
                                    Text(food.name)
                                })
                            }
                        } // ForEach
                    } // List
                        .navigationBarTitle("Food List")
                    
                }
            }
        } // Navigation View
            .onAppear(perform: {
                
            })
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodListView(shouldShowFirstItem: false).environmentObject(FoodListViewModel())
//    }
//}
