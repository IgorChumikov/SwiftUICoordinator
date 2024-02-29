//
//  Page.swift
//  SwiftUICoordinator
//
//  Created by Игорь Чумиков on 21.02.2024.
//

import Foundation

// MARK: - Page

enum Page: String, Identifiable {
    case apple, banana, carrot, bananaUIKit
    
    var id: String {
        self.rawValue
    }
}
