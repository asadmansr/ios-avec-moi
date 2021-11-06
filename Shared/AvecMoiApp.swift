//
//  AvecMoiApp.swift
//  Shared
//
//  Created by Asad Mansoor on 2021-11-06.
//

import SwiftUI

@main
struct AvecMoiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
