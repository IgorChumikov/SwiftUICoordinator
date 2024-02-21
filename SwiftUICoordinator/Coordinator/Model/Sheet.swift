//
//  Sheet.swift
//  SwiftUICoordinator
//
//  Created by Игорь Чумиков on 21.02.2024.
//

import Foundation

// MARK: - Sheet

enum Sheet: String, Identifiable {
    case lemon
    
    var id: String {
        self.rawValue
    }
}
