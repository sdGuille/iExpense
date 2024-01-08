//
//  iExpenseApp.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 28/9/23.
//

import SwiftData
import SwiftUI

@main
struct iExpenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: ExpenseItem.self)
    }
}
