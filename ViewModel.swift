//
//  Expenses.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

import SwiftData
import Foundation
//
@Observable
class ViewModel {
    @ObservationIgnored
    private let dataSource: ItemDataSource
    var items: [ExpenseItem] = []
    
    var personalExpenses: [ExpenseItem] {
        items.filter { $0.type == "Personal" }
    }
    
    var businessExpenses: [ExpenseItem] {
        items.filter { $0.type == "Business" }
    }
    
    init(dataSource: ItemDataSource = ItemDataSource.shared) {
        self.dataSource = dataSource
        items = dataSource.fetchItems()
    }
    
    func appendItem() {
        dataSource.appendItem(item: ExpenseItem(name: <#T##String#>, type: <#T##String#>, amount: <#T##Double#>))
    }
    
    func removeItem(_ index: Int) {
        dataSource.removeItem(items[index])
    }
    
}
