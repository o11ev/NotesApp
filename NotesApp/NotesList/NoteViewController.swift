//
//  NoteViewController.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import UIKit

class NoteViewController: UIViewController {

    var note: Note!
    var noteIndex: Int!
    
    @IBOutlet var titleTextFiled: UITextField!
    @IBOutlet var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextFiled.text = note.title
        noteTextView.text = note.text
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        editNote()
    }

}

// MARK: - Edditing Note
extension NoteViewController {
    func editNote() {
        guard let title = titleTextFiled.text else { return }
        guard let text = noteTextView.text else { return }

        if !title.isEmpty && !text.isEmpty {
            let note = Note(title: title, text: text)
            DataManager.shared.notes[noteIndex] = note
        }
    }
}

