//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import Foundation
import SwiftData

struct ExpenseItem: Codable, Identifiable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}


@Model
class ExpenseItom {
    var id = UUID()
    var name: String
    var type: String
    var amount: Double
    
    init(id: UUID = UUID(), name: String, type: String, amount: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.amount = amount
    }
}
