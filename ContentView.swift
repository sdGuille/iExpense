//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Tap Count \(tapCount)") {
                    tapCount += 1
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
