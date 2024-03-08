//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 08/03/24.
//

import SwiftUI

struct NewScrumSheet: View {
    @Binding var isPresentingNewScrumView: Bool
    @State private var newScrum = DailyScrum.emptyScrum
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
        }
    }
}

struct NewScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewScrumSheet(isPresentingNewScrumView: .constant(true))
    }
}
