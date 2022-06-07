//
//  ModelData.swift
//  Landmarks
//
//  Created by Jack Bailey on 07/06/2022.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json") // An array of landmarks which is based on landmarkData.json

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) // Try find the file
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file) // Try load the contents of the file as Data
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder() // Define a JSON data decoder
        return try decoder.decode(T.self, from: data) // Decode the JSON file
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
