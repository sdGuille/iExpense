//
//  Expenses.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
