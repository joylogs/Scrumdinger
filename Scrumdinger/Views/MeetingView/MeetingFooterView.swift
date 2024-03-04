//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 04/03/24.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index + 1
    }
    
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers)
            .previewLayout(.sizeThatFits)
    }
}
