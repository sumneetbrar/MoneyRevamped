//
//  MoneyRevampedApp.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI
import Firebase

@main
struct MoneyRevampedApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
