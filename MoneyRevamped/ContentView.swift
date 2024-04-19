//
//  ContentView.swift
//  Money
//
//  Created by Sumneet Brar on 2/4/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct storyboardView: UIViewControllerRepresentable {
    func makeUIViewController(context content: Context) -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "Main")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
