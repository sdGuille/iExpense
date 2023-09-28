//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let parent: String
    
    var body: some View {
        Text("Hello from here too \(parent)")
        Button("Dismiss") {
            dismiss()
        }
        .buttonStyle(.bordered)
    }
}

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: deleteRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
                .toolbar {
                    EditButton()
                }
            }
            .navigationTitle("OnDelete()")
        }
    }
    
    func deleteRows(at offset: IndexSet) {
        numbers.remove(atOffsets: offset)
    }
}

#Preview {
    ContentView()
}
