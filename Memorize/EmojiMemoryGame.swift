//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dawid Kubicki on 27/11/2020.
//

import SwiftUI

// let's create a view model here (to model which is a MemoryGame)
class EmojiMemoryGame {
    //(set) it's like a glass door - only EmojiMemoryGame can modify model but rest can see it
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        return model.choose(card: card)
    }
}
