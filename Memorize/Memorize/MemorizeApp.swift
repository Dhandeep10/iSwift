//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dhandeep  Singh on 14/08/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
