//
//  CardList.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI

struct TransactionsView: View {
    let cards: [Card] = [
        Card(icon: "paintbrush.pointed", merchant: "Sherwin-Williams", category: "Paint Supplies", date: "April 06, 2024", amount: "-$75.60"),
        Card(icon: "bicycle", merchant: "Specialized", category: "Sporting Goods", date: "April 02, 2024", amount: "-$1200"),
        Card(icon: "film", merchant: "Netflix", category: "Entertainment", date: "March 29, 2024", amount: "-$15.99"),
        Card(icon: "fork.knife", merchant: "Chipotle", category: "Food", date: "March 25, 2024", amount: "-$29.90"),
        Card(icon: "cart.fill", merchant: "Amazon", category: "E-commerce", date: "March 21, 2024", amount: "-$108.99"),
        Card(icon: "note.text", merchant: "Office Depot", category: "Office Supplies", date: "March 17, 2024", amount: "-$45.75"),
        Card(icon: "house.fill", merchant: "IKEA", category: "Furniture", date: "March 13, 2024", amount: "-$230"),
        Card(icon: "airplane", merchant: "Delta Airlines", category: "Travel", date: "March 09, 2024", amount: "-$299"),
        Card(icon: "car", merchant: "Tesla", category: "Automotive", date: "March 05, 2024", amount: "-$50,000"),
        Card(icon: "bus", merchant: "Apple", category: "Software", date: "March 01, 2024", amount: "-$11.94"),
        Card(icon: "pawprint", merchant: "PetSmart", category: "Pet Supplies", date: "February 26, 2024", amount: "-$82.99"),
        Card(icon: "graduationcap", merchant: "Coursera", category: "Education", date: "February 22, 2024", amount: "-$399"),
        Card(icon: "fork.knife", merchant: "McDonald's", category: "Food", date: "February 18, 2024", amount: "-$12.80"),
        Card(icon: "bolt.car", merchant: "Nissan", category: "Automotive", date: "February 14, 2024", amount: "-$22,000"),
        Card(icon: "leaf.arrow.triangle.circlepath", merchant: "Home Depot", category: "Gardening", date: "February 10, 2024", amount: "-$144.22"),
        Card(icon: "scissors", merchant: "Great Clips", category: "Haircut", date: "February 06, 2024", amount: "-$18"),
        Card(icon: "flame", merchant: "Chevron", category: "Fuel", date: "February 02, 2024", amount: "-$63.20"),
        Card(icon: "headphones", merchant: "Best Buy", category: "Electronics", date: "January 29, 2024", amount: "-$215.60"),
        Card(icon: "film", merchant: "AMC Theatres", category: "Movies", date: "January 25, 2024", amount: "-$28.75"),
        Card(icon: "gamecontroller.fill", merchant: "GameStop", category: "Gaming", date: "January 20, 2024", amount: "-$59.99"),
        Card(icon: "tshirt", merchant: "Gap", category: "Apparel", date: "January 16, 2024", amount: "-$58.30"),
        Card(icon: "book.closed", merchant: "Barnes & Noble", category: "Books", date: "January 12, 2024", amount: "-$47.89"),
        Card(icon: "cart.fill", merchant: "Whole Foods", category: "Groceries", date: "January 08, 2024", amount: "-$132.45"),
        Card(icon: "cup.and.saucer.fill", merchant: "Starbucks", category: "Beverages", date: "January 05, 2024", amount: "-$4.50"),
        Card(icon: "laptopcomputer", merchant: "Apple", category: "Electronics", date: "January 02, 2024", amount: "-$999.99")
        ]
    
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HStack {
                    // header
                    Text("Transactions")
                        .bold()
                        .font(.title)
                    
                    Spacer()
                }
                .padding(.top)
                
                ForEach(Array(cards.enumerated()), id: \.element) { index, card in
                    Card(height: card.height, icon: card.icon, merchant: card.merchant, category: card.category, date: card.date, amount: card.amount)
                    Divider().opacity(index == cards.count - 1 ? 0 : 1)
                }
            }
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

#Preview {
    TransactionsView()
}
