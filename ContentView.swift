//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var user = User()
    
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

class User {
    var firstname = "Guillermo"
    var lastname = "Ruiz"
}
