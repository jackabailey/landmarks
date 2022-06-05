//
//  ContentView.swift
//  Shared
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

struct Content: View {
    var body: some View {
        VStack {
            TabView {
                tabItem {
                Image(systemName: "gearshape.fill")
                Text ("Settings")
                }
                tabItem {
                Image(systemName: "house.fill")
                Text ("Home")
                }
                tabItem {
                Image(systemName: "graduationcap.fill")
                Text ("Grades")
                }
            }
        }
    }
}

struct Home_Previews:
    PreviewProvider {
        static var previews: some View{
            Home()
        }
    }
