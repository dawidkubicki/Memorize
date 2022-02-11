//
//  ContentView.swift
//  Memorize
//
//  Created by Dawid Kubicki on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
                .padding()
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
