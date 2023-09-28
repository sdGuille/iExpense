//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        @State var user = User(name: "Guillermo Ruiz", rol: "iOS Developer")
        
        NavigationStack {
            VStack {
                Button("Save User ") {
                    let encoder = JSONEncoder()
                    
                    if let data = try? encoder.encode(user) {
                        UserDefaults.standard.set(data, forKey: "UserData")
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct User: Codable {
    let name: String
    let rol: String
}
