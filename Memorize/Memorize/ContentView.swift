//
//  ContentView.swift
//  Memorize
//
//  Created by Dawid Kubicki on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var emojis: [String] = ["⛷", "🚡", "📚", "🧅", "✊", "🦌", "⏰", "⚖️", "👻", "👽", "😸", "🎃", "🐇", "🌴", "🥎", "🛹", "⛳️", "🏀", "🍴", "🏋️‍♀️", "🥋", "🥊"]
    @State var emojiCount = 17
    
    var body: some View {
        
        VStack{
            title
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum:  75))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.red)
                .padding(.horizontal)
            }
            Spacer()
        }
    }
    
    var title: some View {
        HStack{
            Spacer()
            Text("Memorize!").font(.largeTitle)
            Spacer()
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
                shape.strokeBorder(lineWidth: 3)
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
        ContentView()
            .preferredColorScheme(.dark)
    }
}
