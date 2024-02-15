//
//  CardView.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 14/02/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20.0)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum2 = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum2)
            .background(.yellow)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
