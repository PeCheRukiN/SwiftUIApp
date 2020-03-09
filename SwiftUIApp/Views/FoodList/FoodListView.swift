//
//  ListView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI
import Combine

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let isFavorite: Bool
}

struct FoodListView: View {
    
    @EnvironmentObject var viewModel: FoodListViewModel
    
    var body: some View {
        NavigationView {
            List {
                Text("Bubble")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
