//
//  Item.swift
//  Note App
//
//  Created by Wyat Soule on 1/14/25.
//

import Foundation
import SwiftData

@Model
final class Session {
    var sessionName: String
    var speaker: String
    var notes: String
    var rating: Rating?
    
    init(sessionName: String = "", speaker: String = "", notes: String = "", rating: Rating? = .good) {
        self.sessionName = sessionName
        self.speaker = speaker
        self.notes = notes
        self.rating = rating
    }
}

enum Rating: String, CaseIterable, Codable {
    case meh = "meh"
    case okay = "okay"
    case good = "good"
    case great = "great"
}
