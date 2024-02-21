//
//  Page.swift
//  SwiftUICoordinator
//
//  Created by Игорь Чумиков on 21.02.2024.
//

import Foundation

// MARK: - Page

enum Page: String, Identifiable {
    case apple, banana, carrot
    
    var id: String {
        self.rawValue
    }
}
