//
//  OrderView.swift
//  Appetizer
//
//  Created by Danish on 11/07/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order

    var body: some View {

        NavigationView{
            
            VStack{
                
                List {
                    ForEach(order.items, id: \.id) { item in
                        CellView(myModel: item)
                    }
                    .onDelete(perform: deleteItems)
                }
                .navigationTitle("Orders")
                
                Button{
                    
                }label: {
                    Text("20 Rs Place Order")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.medium)
                    
                }
                .frame(maxWidth: .infinity , maxHeight : 50)
                .background(.green)
                .cornerRadius(10)
                .padding(.leading , 20)
                .padding(.trailing , 20)
                .padding(.bottom , 10)
            }
        }

    }
    
    func deleteItems(at offsets: IndexSet) {
        order.delete(at: offsets)
    }

}

#Preview {
    OrderView()
}
