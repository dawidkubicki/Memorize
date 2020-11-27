//
//  ContentView.swift
//  Memorize
//
//  Created by Dawid Kubicki on 26/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack{
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture(perform: {
                    viewModel.choose(card: card)
                })
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3.0)
                Text(card.content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}
