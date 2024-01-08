//
//  ContentView.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

//import SwiftData
//import SwiftUI
//
//struct ContentView: View {
//
//    @Environment(\.modelContext) var modelContext
//    @State private var sortOrder = [
//        SortDescriptor(\ExpenseItem.name),
//        SortDescriptor(\ExpenseItem.type)
//    ]
//
//    @State private var showingAddExpense = false
//    @Bindable var expenses = Expenses()
//
//    var body: some View {
//        NavigationStack {
//            List {
//                ExpenseSection(title: "Business", expenses: expenses.businessExpenses, deleteItems: deleteRow)
//
//                ExpenseSection(title: "Personal", expenses: expenses.personalExpenses, deleteItems: deleteRow)
//            }
//            Menu("Sort", systemImage: "arrow.up.arrow.down") {
//                Picker("Sort", selection: $sortOrder) {
//                    Text("Sort by name")
//                        .tag([
//                            SortDescriptor(\ExpenseItem.name),
//                            SortDescriptor(\ExpenseItem.amount)
//                        ])
//
//                    Text("Sort by Amount")
//                        .tag([
//                            SortDescriptor(\ExpenseItem.amount),
//                            SortDescriptor(\ExpenseItem.name)
//                        ])
//                }
//            }
//
//            .navigationTitle("iExpense")
//            .toolbar {
//                Button {
//                    showingAddExpense = true
//                } label: {
//                    Image(systemName: "plus")
//                }
//            }
//            .sheet(isPresented: $showingAddExpense) {
//                AddView(expenses: expenses)
//            }
//        }
//    }
//
//    func deleteRow(at offset: IndexSet) {
//        expenses.items.remove(atOffsets: offset)
//    }
//}
////
//#Preview {
//    ContentView()
//}
//
//
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    
    @State private var path = [ExpenseItem]()
    @Query var expenses: [ExpenseItem]
    @State private var showingAddExpense = false
    @State private var sortOrder = [
        SortDescriptor(\ExpenseItem.name),
        SortDescriptor(\ExpenseItem.type),
    ]
    var personalExpenses: [ExpenseItem] {
        path.filter { $0.type == "Personal" }
    }
    
    var businessExpenses: [ExpenseItem] {
        path.filter { $0.type == "Business" }
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                List {
                    
//                    ExpenseSection(title: "Personal", expenses: personalExpenses, deleteItems: deleteItem)
                    ExpenseSection(title: "Business", expenses: businessExpenses, deleteItems: deleteItem)
                }
                Menu("Sort", systemImage: "arrow.up.arrow.down") {
                    Picker("Sort", selection: $sortOrder) {
                        Text("Sort by name")
                            .tag([
                                SortDescriptor(\ExpenseItem.name),
                                SortDescriptor(\ExpenseItem.type),
                            ])
                        
                        Text("Sort by type")
                            .tag([
                                SortDescriptor(\ExpenseItem.type),
                                SortDescriptor(\ExpenseItem.name),
                            ])
                    }
                }
            }
            .toolbar {
                Button {
                    showingAddExpense.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddExpense) {
                AddView()
            }
            .navigationTitle("iExpense")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    
    func deleteItem(at offsets: IndexSet) {
        for offset in offsets {
            let item = expenses[offset]
            modelContext.delete(item)
        }
    }
}

#Preview {
    ContentView()
}
