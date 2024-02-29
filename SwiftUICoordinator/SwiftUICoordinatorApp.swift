//
//  SwiftUICoordinatorApp.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

// Навигация в Swift UI: что изменилось с появлением iOS 16 https://habr.com/ru/companies/surfstudio/articles/682156/

// Для желающих попользоваться новой навигацией под ios 15 можно использовать https://github.com/johnpatrickmorgan/NavigationBackport с тем же синтаксисом, что и в ios 16

@main
struct SwiftUICoordinatorApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
}
