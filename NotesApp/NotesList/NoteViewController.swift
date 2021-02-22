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
    @IBOutlet var noteDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextFiled.text = note.title
        noteTextView.text = note.text
        
        setOldDateToLabel()
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        editNote()
        dismiss(animated: true)
    }
}

// MARK: - Edditing Note
extension NoteViewController {
    func editNote() {
        guard let title = titleTextFiled.text else { return }
        guard let text = noteTextView.text else { return }
        let date = addCurrentDateToNote()
        
        if !title.isEmpty && !text.isEmpty {
            let note = Note(title: title, text: text, date: date)
            DataManager.shared.notes[noteIndex] = note
        }
    }
}

// MARK: - Add Current Day to Note Info
extension NoteViewController {
    func addCurrentDateToNote() -> String {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "dd-MM-yyyy"
        let formattedDate = format.string(from: date)
        return formattedDate
    }
}

// MARK: - Set Date to Label
extension NoteViewController {
    func setOldDateToLabel() {
        let oldData = note.date
        noteDataLabel.text = oldData
    }
}
