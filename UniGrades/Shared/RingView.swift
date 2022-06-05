//
//  RingView.swift
//  UniGrades (iOS)
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

struct RingView: View {

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.green, lineWidth: 15)
        }.padding(.horizontal, 62.0).frame(idealWidth: 50, idealHeight: 50, alignment: .center).shadow(radius: 5,y: 3)
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
