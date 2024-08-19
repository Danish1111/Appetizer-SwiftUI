//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Danish on 24/07/24.
//

import Foundation

final class NetworkManager{
    static let shared = NetworkManager()
    static let baseUrl = ""
    
    private init(){
        
    }
    
    func getAppetizers(completed : @escaping (Result<[MyModel] , APError>) -> Void){
        
        guard let url = URL(string: "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers") else{
            completed(.failure(.invalideUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil{
                completed(.failure(.unableToComplete))
                return
            }else{
                
                guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                    completed(.failure(.invalideResponse))
                    return
                }
                
                guard let myData = data else{
                    completed(.failure(.invalidData))
                    return
                }
                
                
                
                do{
                    let decoder = JSONDecoder()
                    let decoderResponse = try decoder.decode(MyModelResponse.self, from: data!)
                    completed(.success(decoderResponse.request ?? []))
                }catch{
                    completed(.failure(.invalidData))
                }
 
            }
        }
        
        task.resume()
                
        
    }
}
