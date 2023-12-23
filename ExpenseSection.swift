//
//  ExpenseSection.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 30/9/23.
//

import SwiftData
import SwiftUI

struct ExpenseSection: View {
    let title: String
    var expenses: [ExpenseItem]
    let deleteItems: (IndexSet) -> Void
    
    var body: some View {
        Section(title) {
            ForEach(expenses) { item in
                ItemRow(name: item.name, type: item.type, amount: item.amount)
            }
            .onDelete(perform: deleteItems)
        }
    }
}

#Preview {
    ExpenseSection(title: "Example", expenses: [],
                   deleteItems: { _ in })
}
