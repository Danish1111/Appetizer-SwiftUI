//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Danish on 05/08/24.
//

import SwiftUI

final class AccountViewModel : ObservableObject{
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var date = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false

}
