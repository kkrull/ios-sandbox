//
//  SessionListingView.swift
//  swift-data
//
//  Created by Kyle Krull on 1/14/25.
//

import SwiftData
import SwiftUI

struct SessionListingView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \Session.sessionName) var sessions: [Session]
    
    init(sort: SortDescriptor<Session>, searchString: String) {
        _sessions = Query(filter: #Predicate {
            if searchString.isEmpty {
                return true
            } else {
                return $0.notes.localizedStandardContains(searchString)
            }
        }, sort: [sort])
    }

    var body: some View {
        List {
            ForEach(sessions) { session in
                NavigationLink(value: session) {
                    VStack(alignment: .leading) {
                        Text(session.sessionName).font(.headline)
                    }
                }
            }
            .onDelete(perform: deleteItems(offsets:))
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        for index in offsets {
            let item = sessions[index]
            modelContext.delete(item)
        }
    }
}
