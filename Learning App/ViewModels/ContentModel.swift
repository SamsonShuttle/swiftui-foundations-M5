//
//  ContentModel.swift
//  Learning App
//
//  Created by Samson Shuttle on 03/03/2022.
//

import Foundation


class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        
        getlocalData()
        
    }
    
    func getlocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            
            // Try to decode the json into an array of modules
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Asign parsed modules to modules property
            self.modules = modules
            
            
        }
        catch {
            print(error)
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        }
        catch {
            print(error)
        }
        
    }
    
}
