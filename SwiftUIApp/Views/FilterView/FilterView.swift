//
//  FilterView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    
    @Binding var isFavoritesShowed: Bool
    
    @EnvironmentObject var viewModel: FoodListViewModel
    
    var body: some View {
        Toggle(isOn: $isFavoritesShowed) {
            Text(viewModel.filterButtonName)
        }    
    }
}
