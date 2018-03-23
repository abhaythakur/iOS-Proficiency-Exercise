//
//  ApiClient.swift
//  CGO
//
//  Created by Abhay on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit
import Foundation

typealias DataModelJSON = [String: Any]

let FACT_URL = "https://api.myjson.com/bins/1bfss3"

struct APIClient {
    // method of get api response 
    static func getCountryFactsAPI(completion: @escaping (DataModelJSON?) -> Void) {
        
        let url = URL(string: FACT_URL)
        
        let session = URLSession.shared
     
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            guard let unwrappedData = data else { print("Error unwrapping data"); return }
            
            do {
                let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as? DataModelJSON
                completion(responseJSON)
            } catch {
                print("Could not get fact API data. \(error), \(error.localizedDescription)")
            }
        }
        
        dataTask.resume()
    }
    
    
    
    
    
}
