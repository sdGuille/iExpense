//
//  ItemRow.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

//import SwiftData
import SwiftUI

struct ItemRow: View {
    let name: String
    let type: String
    let amount: Double
    
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(type)
            }
            Spacer()
            Text(amount, format: .localCurrency)
                .foregroundStyle(amount < 10 ? .green : amount < 100 ? .blue : .red)
            
        }
    }
}

#Preview {
    ItemRow(name: "Light Bar", type: "Business", amount: 120)
}
