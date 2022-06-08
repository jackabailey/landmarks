//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Jack Bailey on 07/06/2022.
//

import SwiftUI

struct LandmarkList: View {                             // Create a new view for the List of Landmarks
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {                                // A navigation view gives the 'list' effect which is common in apple apps like settings
            List {                                      // Create a list of landmarks (Identified in the DataModel.swift file)
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Only Show Favorites")
                }
                
                ForEach(filteredLandmarks) {
                    landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    .navigationTitle("Landmarks")
                }
            }
        }
    }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 13 Pro Max"], id: \.self) { deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
            }
        }
    }
}
