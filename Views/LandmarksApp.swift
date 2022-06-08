//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jack Bailey on 06/06/2022.
//

import SwiftUI

@main                       // @main Indicates the very start of the application
struct LandmarksApp: App {  // This struct is the main struct of the App, which is of type 'App'
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {  // The body of the struct is a scene ...
        WindowGroup {       // ... Which contains a window group ...
            ContentView()   // ... Which creates a content view.   (Follow at ContentView.Swift)
                .environmentObject(modelData)
        }
    }
}
