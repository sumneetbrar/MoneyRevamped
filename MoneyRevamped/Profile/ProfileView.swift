//
//  ProfileView.swift
//  MoneyRevamped
//
//  Created by Sumneet Brar on 4/17/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var `viewModel`: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                // User Section
                Section {
                    HStack {
                        Text(user.initials)
                        //Text("SB")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text(user.fullname)
                            //Text("Sumneet Brar")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                            
                            Text(user.email)
                            //Text("sumneetbrar@gmail.com")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                
                // General Section - contains version
                Section("General") {
                    HStack {
                        SettingsRowView(imageName: "gear",
                                        title: "Version",
                                        tintColor: Color(.systemGray))
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                // Account Section - has sign out and delete account functionality
                Section("Account") {
                    Button {
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                    
                    Button {
                        Task {
                            await viewModel.deleteAccount()
                        }
                    } label: {
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static let viewModel = AuthViewModel()

    static var previews: some View {
        ProfileView()
            .environmentObject(viewModel)
    }
}

