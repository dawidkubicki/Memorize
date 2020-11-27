//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dawid Kubicki on 26/11/2020.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
