//
//  UniGradesApp.swift
//  Shared
//
//  Created by Jack Bailey on 05/06/2022.
//

import SwiftUI

@main
struct UniGradesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
