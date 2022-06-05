//
//  SettingsView.swift
//  UniGrades (iOS)
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack{
            NavigationView {
                Text("Hello!")
                .navigationBarTitle(Text("Settings"))
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
