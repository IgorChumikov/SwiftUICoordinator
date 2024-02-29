//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

// MARK: - AppleView

struct AppleView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject private var coordinator: Coordinator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Push SwiftUI🍌") {
                coordinator.push(.banana)
            }
            Button("Present SwiftUI🍋") {
                coordinator.present(.lemon)
            }
            Button("Present SwiftUI🫒") {
                coordinator.fullScreenCover(.olive)
            }
            
            Button("Push UIKit 🍌") {
                coordinator.push(.bananaUIKit)
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
