//
//  AboutAppView.swift
//  SwiftUIApp
//
//  Created by Artem Pecherukin on 09.03.2020.
//  Copyright © 2020 pecherukin. All rights reserved.
//

import SwiftUI

struct AboutAppView: View {
    
    @State var isAboutShown: Bool = false
    
    var body: some View {
        VStack {
            Text("About App")
                .simultaneousGesture(TapGesture().onEnded {
                    self.isAboutShown.toggle()
                })
        }
        .sheet(isPresented: $isAboutShown, onDismiss: { print("Modal Closed") }) {
            AboutAppViewModal()
        }
    }
}

struct AboutAppViewModal: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                Text("Close")
            }
            Spacer()
            Image(systemName: "tortoise")
                .foregroundColor(.red)
                .font(.largeTitle)
            Spacer()
            Spacer()
        }
    }
}
