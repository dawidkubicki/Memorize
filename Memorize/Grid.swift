//
//  Grid.swift
//  Memorize
//
//  Created by Dawid Kubicki on 02/12/2020.
//

import SwiftUI

struct Grid<Item, ItemView>: View {
    
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
