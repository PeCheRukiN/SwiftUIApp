//
//  FoodView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI

struct FoodView: View {
    
    let foodName: String
    let description: String
    
    var body: some View {
        ScrollView {
            EmptyView()
            Text(description)
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
        }
        .navigationBarTitle(foodName)
    }
}
