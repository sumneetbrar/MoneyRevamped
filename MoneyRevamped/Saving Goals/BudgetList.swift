//
//  BudgetList.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI

struct BudgetList: View {
    let budgets: [BudgetCard] = [
        BudgetCard(icon: "paintbrush.pointed", goalName: "Art Studio Setup", goalDate: "Aug 31, 2024", goalAmount: "$1,500"),
        BudgetCard(icon: "camera.fill", goalName: "Professional Camera", goalDate: "Oct 10, 2024", goalAmount: "$2,500"),
        BudgetCard(icon: "desktopcomputer", goalName: "New PC", goalDate: "Dec 31, 2024", goalAmount: "$5,000"),
        BudgetCard(icon: "leaf.fill", goalName: "Garden Makeover", goalDate: "Apr 20, 2025", goalAmount: "$1,200"),
        BudgetCard(icon: "house.fill", goalName: "Home Renovation", goalDate: "Feb 28, 2025", goalAmount: "$15,000"),
        BudgetCard(icon: "airplane.departure", goalName: "Vacation to Europe", goalDate: "May 15, 2025", goalAmount: "$3,500"),
        BudgetCard(icon: "car.fill", goalName: "Car Upgrade", goalDate: "Jul 30, 2025", goalAmount: "$20,000")
    ]

    var body: some View {
        VStack {
            HStack {
                // header
                Text("Saving Goals")
                    .bold()
                
                Spacer()
                
                // header link
                NavigationLink {
                    SavingsView()
                } label: {
                    HStack(spacing: 4) {
                        Text("See all")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.blue)
                }
            }
            .padding(.top)
            
            ForEach(Array(budgets.prefix(3).enumerated()), id: \.element) { index, budget in
                BudgetCard(icon: budget.icon, goalName: budget.goalName, goalDate: budget.goalDate, goalAmount: budget.goalAmount)

                Divider()
                    .opacity(index == budgets.count - 5 ? 0 : 1) // Hide divider after the last item
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    BudgetList()
}
