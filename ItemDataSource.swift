//
//  ItemDataSource.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 22/12/23.
//

//import SwiftData
//import Foundation
//
//final class ItemDataSource {
//    private let modelContainer: ModelContainer
//    private let modelContext: ModelContext
//    
//    @MainActor
//    static let shared = ItemDataSource()
//    
//    @MainActor
//    private init() {
//        self.modelContainer = try! ModelContainer(for: ExpenseItem.self)
//        self.modelContext = modelContainer.mainContext
//    }
//    
//    func appendItem(item: ExpenseItem) {
//        modelContext.insert(item)
//        do {
//            try modelContext.save()
//        } catch {
//            fatalError(error.localizedDescription)
//        }
//    }
//    
//    func fetchItems() -> [ExpenseItem] {
//        do {
//            return try modelContext.fetch(FetchDescriptor<ExpenseItem>())
//        } catch {
//            fatalError(error.localizedDescription)
//        }
//    }
//    
//    func removeItem(_ item: ExpenseItem) {
//        modelContext.delete(item)
//    }
//}
