//
//  DataManager.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()

    var notes: [Note] = [
        Note(title: "Заметка 1", text: "Текст заметки"),
        Note(title: "Заметка 2", text: "Текст заметки"),
        Note(title: "Заметка 3", text: "Текст заметки")
    ]
    
    private init () {}
    
}
