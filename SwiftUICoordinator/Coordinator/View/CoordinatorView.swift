//
//  CoordinatorView.swift
//  SwiftUICoordinator
//
//  Created by Игорь Чумиков on 21.02.2024.
//

import SwiftUI

struct CoordinatorView: View {
    
    // MARK: - Properties
    
    @StateObject private var coordinator = Coordinator()
    
    // MARK: - Content
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(.apple)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover)
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
