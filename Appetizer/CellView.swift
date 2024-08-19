//
//  CellView.swift
//  Appetizer
//
//  Created by Danish on 23/07/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct CellView: View {
    var myModel : MyModel?

    var body: some View {
                
        HStack{
            
            if let imageURL = myModel?.imageURL, let url = URL(string: imageURL) {
                WebImage(url: url)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                    .frame(width: 120, height: 90)

            } else {
                Image("sampleImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                    .frame(width: 120, height: 90)
            }

//            Image(myModel?.imageURL ?? "sampleImage")
//                .resizable() // Makes the image resizable
//                .aspectRatio(contentMode: .fit) // Maintains the aspect ratio
//                .cornerRadius(8)
//                .frame(width: 120, height: 90) // Sets the frame of the image
                        
            VStack(alignment: .leading , spacing: 10){
                Text(myModel?.name ?? "test appetizer")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("\(myModel?.price ?? 0,specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .font(.title2)
                    .fontWeight(.medium)

            }.padding(.leading , 5)
        }
        
    }
}

#Preview {
    CellView()
}
