//
//  ActivityIndicator.swift
//  Appetizer
//
//  Created by Danish on 25/07/24.
//

import Foundation
import SwiftUI


struct ActivityIndicator: UIViewRepresentable {

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.color = .black
        activityIndicator.startAnimating()
        return activityIndicator
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
}

struct LoadingView : View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
            ActivityIndicator()
        }
    }
}
