//
//  ContentView.swift
//  Appetizer
//
//  Created by Danish on 11/07/24.
//

import SwiftUI

struct AppetizerView: View {
    var body: some View {
        
        TabView{
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }


        }
        .accentColor(.green)
    }
}

#Preview {
    AppetizerView()
}
