//
//  DetailView.swift
//  Appetizer
//
//  Created by Danish on 25/07/24.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DetailView: View {
        
    var myModel : MyModel?
    @Binding var isDetailViewShowing : Bool
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        VStack{
            
            
            if let imageURL = myModel?.imageURL, let url = URL(string: imageURL) {
                WebImage(url: url)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .overlay(Button{
                        isDetailViewShowing = false
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: 40 , height: 40)
                                .foregroundColor(.white)
                            
                            Image(systemName: "xmark")
                                .imageScale(.large)
                                .frame(width: 44 , height: 44)
                                .foregroundColor(.black)
                            
                            
                        }
                    },alignment: .topTrailing)

            } else {
                Image("sampleImage")
                    .resizable()
                    .frame(width: .infinity,height: 250)
                    .overlay(Button{
                        isDetailViewShowing = false
                    } label: {
                        ZStack{
                            Circle()
                                .frame(width: 40 , height: 40)
                                .foregroundColor(.white)
                            
                            Image(systemName: "xmark")
                                .imageScale(.large)
                                .frame(width: 44 , height: 44)
                                .foregroundColor(.black)
                            
                            
                        }
                    },alignment: .topTrailing)
            }
                        
            
            Text(myModel?.name ?? "test appetizer")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.top, 10)
                .padding(.bottom, 10)
                .padding(.horizontal, 16)
            
            Text(myModel?.description ?? "test appetizer")
                .font(.system(size: 16, weight: .light))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
            
            
            HStack{
                
                VStack(spacing: 0) {
                    Text("Calories")
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.black)
                        .padding(.bottom , 10)

                    Text("\(myModel?.calories ?? 0) gram")
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.gray)

                }
                .frame(maxWidth: .infinity, alignment: .bottom)
                
                
                VStack(spacing: 0) {
                    Text("Carbs")
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.black)
                        .padding(.bottom , 10)

                    Text("\(myModel?.carbs ?? 0) gram")
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.gray)

                }
                .frame(maxWidth: .infinity) // Ensures equal width
                
                
                VStack(spacing: 0) {
                    Text("Protein")
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.black)
                        .padding(.bottom , 10)

                    Text("\(myModel?.protein ?? 0) gram")
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(.gray)

                }
                .frame(maxWidth: .infinity) // Ensures equal width
                
                
            }.padding(.leading,16)
            .padding(.trailing,16)
            
            Spacer()
            
            Button(action: {
                order.items.append(myModel!)
            }, label: {
                
                Text("\(myModel?.price ?? 0,specifier: "%.2f") Add to Order")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .padding()
            })
            .frame(maxWidth: .infinity , maxHeight: 40)
            .background(Color.green)
            .cornerRadius(8)
            .padding(30)
        
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .padding(.vertical , 100)
        .padding(.horizontal , 30)
        .shadow(radius: 40)
        
    }
}

#Preview {
    DetailView(myModel: MockData.myMockData, isDetailViewShowing: .constant(true))
}
