//
//  uCarApp.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 11.07.2022.
//

import SwiftUI

@main
struct uCarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
