//
//  Card.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI

struct Card: View, Identifiable, Hashable {
    var id = UUID()
    var height: CGFloat = 80 // default height
    var icon: String = "bus" // default icon
    var merchant: String = "Apple"
    var category: String = "Software"
    var date: String = "April 17, 2024"
    var amount: String = "-$11.94"
    
    var body: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.green.opacity(0.6))
                .frame(width: 44, height: 44)
                .overlay {
                    Image(systemName: icon)
                }
            
            
            VStack(alignment: .leading, spacing: 6) {
                Text(merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                Text(category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                Text(date)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            Text(amount)
                .bold()
                .foregroundColor(.black)
        }
        .padding([.top, .bottom], 8)
        
    }
}

#Preview {
    Card()
}
