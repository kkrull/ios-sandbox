//
//  ContentView.swift
//  Note App
//
//  Created by Wyat Soule on 1/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var path = [Session]()
    @State private var sortOrder = SortDescriptor(\Session.sessionName)
    @State private var searchText: String = ""
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        NavigationStack(path: $path) {
            SessionListingView(sort: sortOrder, searchString: "")
            .navigationTitle("CodeMash Sessions")
            .navigationDestination(for: Session.self, destination: EditSessionView.init)
            .toolbar{
                Button("Add session", systemImage: "plus", action: addSession)
            }
        }
    }

    private func addSession() {
        let session = Session()
        modelContext.insert(session)
        path = [session]
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Session.self, inMemory: true)
}
