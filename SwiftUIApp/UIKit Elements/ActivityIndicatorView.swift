//
//  ActivityIndicatorView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicatorView>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicatorView>) {
        uiView.startAnimating()
    }
}


struct ActivityIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView()
    }
}
