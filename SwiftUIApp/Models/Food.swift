//
//  Food.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 10.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let isFavorite: Bool
}
