//
//  AddView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import SwiftData
import SwiftUI

struct AddView: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
//    @Query var expenses: ExpenseItem
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .localCurrency)
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let newItem = ExpenseItem(name: name, type: type, amount: amount)
                    modelContext.insert(newItem)
                    
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddView()
}
