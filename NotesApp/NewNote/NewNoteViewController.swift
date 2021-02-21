//
//  NewNoteViewController.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import UIKit

class NewNoteViewController: UIViewController {
    
    @IBOutlet var titleTextFiled: UITextField!
    @IBOutlet var noteTextView: UITextView!
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        createNote()
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextView.text = "Start text"
        noteTextView.textColor = UIColor.lightGray
        titleTextFiled.becomeFirstResponder()
        
    }
}

// MARK: - Adding Note
extension NewNoteViewController {
    // Сохранение заметки
    func createNote() {
        guard let title = titleTextFiled.text else { return }
        guard let text = noteTextView.text else { return }
        
        // Если заголовок и текст не пустые, то создаем новую заметку и сохраняем
        if !title.isEmpty && !text.isEmpty {
            let note = Note(title: title, text: text)
            DataManager.shared.notes.append(note)
            DataManager.printNotes()
            
        } else {
            showAlert(with: "Something went wrong",
                      and: "Please check text of notes")
        }
        
    }
}

// MARK: - Alert Controller
extension NewNoteViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        present(alert, animated: true)
    }
}
