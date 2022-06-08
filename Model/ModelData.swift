//
//  ModelData.swift
//  Landmarks
//
//  Created by Jack Bailey on 07/06/2022.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    
    @Published var landmarks: [Landmark] = load("landmarkData.json") // An array of landmarks which is based on landmarkData.json
    

}

func load<T: Decodable>(_ filename: String) -> T {
    // func - Defines a function
    // load - The name of the function
    //
    
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) // Try find the file
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file) // Try load the contents of the file as Data into the data variable
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder() // Define a JSON data decoder
        return try decoder.decode(T.self, from: data) // Decode the JSON data
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
