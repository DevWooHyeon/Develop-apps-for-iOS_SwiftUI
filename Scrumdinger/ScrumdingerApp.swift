//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nova on 12/9/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
