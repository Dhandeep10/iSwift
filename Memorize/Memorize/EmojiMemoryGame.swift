//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dhandeep  Singh on 15/08/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["⍺", "β", "𝛄", "𝛅", "𝜃", "μ", "𝛜", "η", "Φ", "𝛇", "𝛋", "ג"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 16) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
            else {
                return "⁉️"
            }
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
