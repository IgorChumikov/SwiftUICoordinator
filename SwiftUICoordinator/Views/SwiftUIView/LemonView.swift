//
//  LemonView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

// MARK: - LemonView

struct LemonView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject private var coordinator: Coordinator
    
    // MARK: - Content
    
    var body: some View {
        List {
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("🍋")
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
