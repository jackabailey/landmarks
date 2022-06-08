//
//  ContentView.swift
//  Landmarks
//
//  Created by Jack Bailey on 06/06/2022.
//

import SwiftUI

struct ContentView: View {  // The content view is a 'View' type struct
    var body: some View {   // The body is some (or 'a') view which calls ...
        LandmarkList()      // ... LandmarkList (Follow at LandmarkList.swift)
    }
}

struct ContentView_Previews: PreviewProvider {  // This is a Preview Provider, which provides previews to the canvas
    static var previews: some View {            // A preview is a type of view ...
        ContentView()                           // Which calls contentView so it can be seen in the canvas
    }
}
