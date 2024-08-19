//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Danish on 11/07/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = ViewModel()

    var body: some View {
        
        
        ZStack{
            NavigationView{
                
                List(viewModel.foodList, id: \.id) { item in
                    CellView(myModel: item)
                        .onTapGesture {
                            viewModel.isDetailViewShowing = true
                            viewModel.selectedModel = item
                        }
                        .listRowSeparator(.hidden)
                }
                .navigationTitle("Appetizer List")
                .disabled(viewModel.isDetailViewShowing)
                .listStyle(.plain)
                
            }.onAppear{
                viewModel.getFoodList()
            }
            .blur(radius: viewModel.isDetailViewShowing ? 20 : 0)
            
            if viewModel.isLoading{
                LoadingView()
            }
            
            if viewModel.isDetailViewShowing{
                DetailView(myModel: viewModel.selectedModel, isDetailViewShowing: $viewModel.isDetailViewShowing)
            }
            
        }
        

    }
    
}

#Preview {
    AppetizerListView()
}
