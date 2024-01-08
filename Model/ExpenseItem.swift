//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import Foundation
import SwiftData

@Model
class ExpenseItem {
    var id = UUID()
    var name: String
    var type: String
    var amount: Double
    
//    var personalExpenses: [ExpenseItem] {
//        expenses.filter { $0.type == "Personal" }
//    }
//    
//    var businessExpenses: [ExpenseItem] {
//        expenses.filter { $0.type == "Business" }
//    }
    
    init(id: UUID = UUID(), name: String, type: String, amount: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.amount = amount
    }
    
}

