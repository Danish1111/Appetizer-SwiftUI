//
//  AccountView.swift
//  Appetizer
//
//  Created by Danish on 11/07/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewModel()

    var body: some View {
        
        NavigationView{
            
            Form{
                Section(header : Text("Personal Info  ")) {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                    
                    DatePicker("Birthday", selection: $viewModel.date, displayedComponents: .date)
                    
                    Button{
                        print("button pressed")
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header : Text("Requests")) {
                    
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                
            }
            .navigationTitle("Accounts")
        }

    }
}

#Preview {
    AccountView()
}
