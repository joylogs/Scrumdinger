//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 12/09/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
//            MeetingView()
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
