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
        Note(title: "Заметка 1", text: "Текст заметки", date: "20-02-2021"),
        Note(title: "Заметка 2", text: "Текст заметки", date: "21-02-2021"),
        Note(title: "Заметка 3", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", date: "22-02-2021")
    ]
    
    private init () {}
}
