//
//  MyModel.swift
//  Appetizer
//
//  Created by Danish on 23/07/24.
//

import Foundation


struct MyModel : Codable{
    var id : Int?
    var calories : Int?
    var carbs : Int?
    var imageURL : String?
    var description : String?
    var name : String?
    var price : Double?
    var protein : Int?
}


struct MyModelResponse : Codable{
    var request : [MyModel]?
}


struct MockData {
    static let myMockData = MyModel(id: 0,calories: 0,carbs: 0,imageURL: "" , description: "",name: "test appetizer",price: 100,protein: 0)
    
    static let myMockDataList = [myMockData,myMockData,myMockData,myMockData,myMockData,myMockData,myMockData,myMockData,myMockData,myMockData,myMockData]
}
