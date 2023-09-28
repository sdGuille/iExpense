//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is: \(user.firstname) \(user.lastname)")
            
            TextField("First Name", text: $user.firstname)
            TextField("Last Name", text: $user.lastname)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

class User: ObservableObject {
    @Published var firstname = "Guillermo"
    @Published var lastname = "Ruiz"
}
