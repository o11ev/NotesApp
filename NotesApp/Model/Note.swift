//
//  Note.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import Foundation

struct Note {
    let title: String
    let text: String
}

extension Note {
    static func getNotes() -> [Note] {
        DataManager.shared.notes
    }
}
