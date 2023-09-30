//
//  ItemRow.swift
//  iExpense
//
//  Created by Guillermo Ruiz Baires on 29/9/23.
//

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
            Text(amount, format: .currency(code: "USD"))
        }
    }
}

#Preview {
    ItemRow(name: "Light Bar", type: "Business", amount: 40)
}
