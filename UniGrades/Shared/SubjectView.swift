//
//  SubjectView.swift
//  UniGrades (iOS)
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

struct SubjectView: View {
    var body: some View {
        VStack{
            NavigationView {
                Text("Hello!")
                .navigationBarTitle(Text("My Grades"))
            }
        }
    }
}

struct SubjectView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectView()
    }
}
