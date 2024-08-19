//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Danish on 11/07/24.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    @StateObject private var order = Order()

    var body: some Scene {
        WindowGroup {
            AppetizerView().environmentObject(order)
        }
    }
}
