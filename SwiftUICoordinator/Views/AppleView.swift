//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

struct AppleView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject private var coordinator: Coordinator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Push 🍌") {
                coordinator.push(.banana)
            }
            Button("Present 🍋") {
                coordinator.present(.lemon)
            }
            Button("Present 🫒") {
                coordinator.fullScreenCover(.olive)
            }
        }
        .navigationTitle("🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
