//
//  EditSessionView.swift
//  Note App
//
//  Created by Wyat Soule on 1/14/25.
//

import SwiftUI

struct EditSessionView: View {
    @Bindable var session: Session
    
    var body: some View {
        Form {
            TextField("Name", text: $session.sessionName)
            TextField("Speaker", text: $session.speaker)
            Picker("Rating", selection: $session.rating) {
                ForEach(Rating.allCases, id: \.rawValue) { rating in
                    Text(rating.rawValue).tag(rating)
                }
            }
            TextField("Notes", text: $session.notes, axis: .vertical)
                .frame(height: 200, alignment: .topLeading)
        }
        .navigationTitle("Edit Session")
        .navigationBarTitleDisplayMode(.inline)
    }

}
