//
//  FirstView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    
    @Binding var destinationTabIndex: Int
    @Binding var shouldShowFoodItem: Bool 
    
    var body: some View {
        Button(action: {
            self.destinationTabIndex = 1
            self.shouldShowFoodItem = true
        }) {
            Text("Go to Food List first item")
        }
    }
}
