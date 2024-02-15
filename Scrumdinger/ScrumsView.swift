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
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
