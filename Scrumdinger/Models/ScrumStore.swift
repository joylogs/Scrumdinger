//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Joy Banerjee on 09/03/24.
//

import SwiftUI

struct ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        
        .appendingPathComponent("scrums.data")
    }
    
    func load() async throws {
        let task = Task<[DailyScrum], Error> {
            let fileURL = try Self.fileURL()
            
            guard let data = try? Data(contentsOf: fileURL) else {
                return []
            }
        }
    }
}
