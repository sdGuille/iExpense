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
    
    @State private var showingSheet = false
    
    var body: some View {
        Text("Hello Mom!")
        
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $showingSheet, content: {
            SecondView(parent: "Mom")
        })
    }
}

#Preview {
    ContentView()
}
