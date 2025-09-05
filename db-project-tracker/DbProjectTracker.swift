//
//  DbProjectTracker.swift
//  db-project-tracker
//
//  Created by Dev Soni on 05/09/25.
//

import SwiftUI
import SwiftData

@main
struct DbProjectTracker: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
