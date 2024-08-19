//
//  Order.swift
//  Appetizer
//
//  Created by Danish on 08/08/24.
//

import SwiftUI

final class Order : ObservableObject{
    @Published var items : [MyModel] = []
    
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

}

