//
//  BudgetCard.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI

struct BudgetCard: View, Identifiable, Hashable {
    var id = UUID()
    var height: CGFloat = 80 // default height
    var icon: String = "desktopcomputer" // default icon
    var goalName: String = "New PC"
    var goalDate: String = "Dec 31, 2024"
    var goalAmount: String = "$5,000"
    
    var body: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.green.opacity(0.6))
                .frame(width: 44, height: 44)
                .overlay {
                    Image(systemName: icon)
                }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(goalName)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                Text(goalDate)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Text(goalAmount)
                .bold()
                .foregroundColor(.black)
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview {
    BudgetCard()
}
