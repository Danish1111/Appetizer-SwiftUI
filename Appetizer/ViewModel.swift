//
//  ViewModel.swift
//  Appetizer
//
//  Created by Danish on 25/07/24.
//

import Foundation
import SwiftUI


final class ViewModel : ObservableObject{
    
    @Published var foodList : [MyModel] = []
    @Published var isLoading : Bool = false
    @Published var isDetailViewShowing = false
    @Published var selectedModel : MyModel?


    func getFoodList(){
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            
            self.isLoading = false
            
            switch result{
            case .success(let foodList):
                self.foodList = foodList
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    

}
