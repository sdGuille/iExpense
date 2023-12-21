//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @State private var sortOrder = [
        SortDescriptor(\ExpenseItem.name),
        SortDescriptor(\ExpenseItem.type)
    ]

    @State private var showingAddExpense = false
    @Bindable var expenses = Expenses()
    
    var body: some View {
        NavigationStack {
            List {
                ExpenseSection(title: "Business", expenses: expenses.businessExpenses, deleteItems: deleteRow)
                
                ExpenseSection(title: "Personal", expenses: expenses.personalExpenses, deleteItems: deleteRow)
            }
            Menu("Sort", systemImage: "arrow.up.arrow.down") {
                Picker("Sort", selection: $sortOrder) {
                    Text("Sort by name")
                        .tag([
                            SortDescriptor(\ExpenseItem.name),
                            SortDescriptor(\ExpenseItem.amount)
                        ])
                    
                    Text("Sort by Amount")
                        .tag([
                            SortDescriptor(\ExpenseItem.amount),
                            SortDescriptor(\ExpenseItem.name)
                        ])
                }
            }
            
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showingAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func deleteRow(at offset: IndexSet) {
        expenses.items.remove(atOffsets: offset)
    }
}
//
#Preview {
    ContentView()
}



