//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import Foundation

struct ExpenseItem: Codable, Hashable {
    let id: Int
    let name: String
    let type: String
    let amount: Double
}
