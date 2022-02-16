//
//  ContentView.swift
//  Memorize
//
//  Created by Dawid Kubicki on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var emojis: [String] = ["⛷", "🚡", "📚", "🧅", "✊", "🦌", "⏰", "⚖️", "👻", "👽", "😸", "🎃", "🐇", "🌴", "🥎", "🛹", "⛳️", "🏀", "🍴", "🏋️‍♀️", "🥋", "🥊"]
    
    @State var vehicles: [String] = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛴", "🚲", "🛺", "🚝", "🚄"]
    
    @State var animals: [String] = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼", "🐻‍❄️", "🐨", "🐯", "🦁", "🐷", "🐸"]
    
//    @State var emojiCount = Int.random(in: 4...17)
    @State var emojiCount = 10
    @State var runDefault = true
    @State var chosenEmoji: [String] = []
    
    var body: some View {
    
        VStack{
            title
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: widthThatBestFits(cardCount: emojiCount)))]) {
                    if runDefault{
                        ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                            CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                    else {
                        ForEach(chosenEmoji[0..<emojiCount], id: \.self) { emoji in
                            CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
                .foregroundColor(.red)
                .padding(.horizontal)
            }
            Spacer()
            HStack{
                Button{
                    runDefault = true
                    emojis.shuffle()
                    emojiCount = Int.random(in: 4...emojis.count)
                } label: {
                    VStack{
                        Image(systemName: "flame").font(.largeTitle)
                        Text("All")
                    }
                }
                Button{
                    runDefault = false
                    chosenEmoji = vehicles
                    vehicles.shuffle()
                    emojiCount = Int.random(in: 4...vehicles.count)
                } label: {
                    VStack{
                        Image(systemName: "car").font(.largeTitle)
                        Text("Vehicles")
                    }
                }
                Button{
                    runDefault = false
                    chosenEmoji = animals
                    animals.shuffle()
                    emojiCount = Int.random(in: 4...animals.count)
                } label: {
                    VStack{
                        Image(systemName: "pawprint").font(.largeTitle)
                        Text("Animals")
                    }
                }
            }
        }
    }
    
    func widthThatBestFits(cardCount: Int) -> CGFloat {
        if (cardCount <= 4) {
            return 125
        }
        else if (cardCount > 4) && (cardCount <= 9) {
            return 120
        }
        else if (cardCount > 9) && (cardCount <= 17) {
            return 80
        }
        else {
            return 65
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
