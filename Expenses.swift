//
//  Expenses.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import Foundation

@Observable
class Expenses {
    var items = [ExpenseItem]()
    
    var personalExpenses: [ExpenseItem] {
        items.filter { $0.type == "Personal" }
    }
    
    var businessExpenses: [ExpenseItem] {
        items.filter { $0.type == "Business" }
    }
}
