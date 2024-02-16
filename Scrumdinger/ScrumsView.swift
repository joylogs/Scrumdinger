//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 15/02/24.
//

import SwiftUI

struct ScrumsView: View {
    var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums, id: \.title) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.mainColor)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button {} label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
