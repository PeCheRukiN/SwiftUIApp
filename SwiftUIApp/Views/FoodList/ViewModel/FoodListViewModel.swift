//
//  FoodListViewModel.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import Foundation
import Combine

final class FoodListViewModel: ObservableObject {
    
    @Published private(set) var filterButtonName = "Show favorites"
    @Published private(set) var foodList: [Food] = []
    @Published private(set) var isLoading = false
    
    init() {
        loadFromServer()
    }
    
    func loadFromServer() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.foodList =  [
                Food(name: " Quick Noodles", description: "One of the staples in every home, noodles are not just a kid's favourite snack to binge on but are also equally loved by adults. Here is a noodles recipe that is super quick and easy to prepare at home. Just bung in all your favourite veggies and create a masterpiece of your own.", isFavorite: true),
                Food(name: "Spring Rolls", description: "A crisp appetizer where shredded veggies are encased in thin sheets and then fried golden. Little munchies to prepare at home for a high tea menu or just a party starter, serve with a tangy dip.", isFavorite: false),
                Food(name: "Stir Fried Tofu with Rice", description: "A simple stir-fry with tofu and oriental sauces. Sti fried togu with rice is a great main course dish to prepare at home laced with flavourful spices and sauces. Serve with some fried rice to make a wholesome meal.", isFavorite: true),
                Food(name: "Shitake Fried Rice with Water Chestnuts", description: "A healthy frice recipe packed with the goodness of mushrooms and water chestnuts that are often used in Chinese meals. Here is a delicious fried rice recipe dish that is fast, filling and flavourful. You can serve with a gravy dish of hot garlic sauce.", isFavorite: false)
            ]
            self.isLoading = false
        }
        
    }
}
