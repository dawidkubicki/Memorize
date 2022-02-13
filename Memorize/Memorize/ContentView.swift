//
//  ContentView.swift
//  Memorize
//
//  Created by Dawid Kubicki on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var emojis: [String] = ["⛷", "🚡", "📚", "🧅", "✊", "🦌", "⏰", "⚖️", "👻", "👽", "😸", "🎃", "🐇", "🌴", "🥎", "🛹", "⛳️", "🏀", "🍴"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack{
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
            
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.vertical)
            .padding(.horizontal)
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct CardView: View {
    
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25)
            if isFaceUp {
                shape.fill(.white)
                shape.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
                    .padding()
            }
            else {
                shape.fill(.red)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
