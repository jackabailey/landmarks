//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jack Bailey on 07/06/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle).bold()
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("About " + landmark.name)
                        .font(.title2).bold()
                Text(landmark.description)
                        .font(.subheadline)
            }.padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
