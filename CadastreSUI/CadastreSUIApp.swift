//
//  CadastreSUIApp.swift
//  CadastreSUI
//
//  Created by gleba on 19.04.2024.
//

import SwiftUI

@main
struct CadastreSUIApp: App {
    private let viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
