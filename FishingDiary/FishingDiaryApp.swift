//
//  FishingDiaryApp.swift
//  FishingDiary
//
//  Created by daisuke on 2021/02/23.
//

import SwiftUI

@main
struct FishingDiaryApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
