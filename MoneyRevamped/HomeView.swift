//
//  ContentView.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI
import SwiftUICharts

struct HomeView: View {
    var demoData: [Double] = [8, 2, 4, 6, 12, 9, 2]
    var demoStringData: [String] = ["$8,473.32", "$2,014.24", "$4,794.17", "$6,993.32", "$12,073.02", "$9,103.84", "$1,973.52"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("Cash Flow")
                        .font(.title2)
                        .bold()
                    
                    CardView {
                        VStack(alignment: .leading) {
                            ChartLabel("$20,473.32", type: .title)
                            LineChart()
                        }
                    }
                    .data(demoData)
                    .chartStyle(ChartStyle(backgroundColor: .green.opacity(0.1),
                                           foregroundColor: ColorGradient(.green.opacity(0.9), .green.opacity(0.2))))
                    .frame(height: 300)
                    .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 1)
                    
                    CardList()
                    BudgetList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem() {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Image(systemName: "gear")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
