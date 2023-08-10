//
//  ContentView.swift
//  TableTest
//
//  Created by Praveen Perera on 2023-08-10.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    var id: String
    var value: String
}

struct ContentView: View {
    @State private var items = [
        Item(id: "1", value: "1"),
        Item(id: "2", value: "2"),
        Item(id: "3", value: "3"),
    ]
    
    @State private var selectedItems = Set<Item.ID>();
    
    var body: some View {
        VStack {
            Table(items, selection: $selectedItems) {
                TableColumn("Id", value: \.id)
                TableColumn("Value", value: \.value)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
