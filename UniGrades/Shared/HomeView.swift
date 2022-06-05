//
//  HomeView.swift
//  UniGrades (iOS)
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            NavigationView {
                Text("Hello!")
                .navigationBarTitle(Text("Home"))
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
