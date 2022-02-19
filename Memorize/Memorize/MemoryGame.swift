//
//  MemoryGame.swift
//  Memorize
//
//  Created by Dawid Kubicki on 19/02/2022.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
