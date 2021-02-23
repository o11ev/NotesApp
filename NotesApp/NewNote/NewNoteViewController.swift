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
    @IBOutlet var currentDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDateToLabel()
        noteTextView.text = "Start texting"
        noteTextView.textColor = UIColor.lightGray
        noteTextView.delegate = self
        
        titleTextFiled.becomeFirstResponder()
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        createNote()
        dismiss(animated: true)
    }
    
    private func setDateToLabel() {
        let noteDate: String = addCurrentDateToNote()
        currentDataLabel.text = noteDate
    }
}

// MARK: - Adding Note
extension NewNoteViewController {
    // Сохранение заметки
    func createNote() {
        guard let title = titleTextFiled.text else { return }
        guard let text = noteTextView.text else { return }
        let date = addCurrentDateToNote()
        
        // Если заголовок и текст не пустые, то создаем новую заметку и сохраняем
        if !title.isEmpty && !text.isEmpty {
            let note = Note(title: title, text: text, date: date)
            DataManager.shared.notes.append(note)
            
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

// MARK: - Text View Placeholder Behaviour
extension NewNoteViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Start texting"
            textView.textColor = UIColor.lightGray
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
}

// MARK: - Add Current Day to Note Info
extension NewNoteViewController {
    func addCurrentDateToNote() -> String {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "dd-MM-yyyy"
        return format.string(from: date)
    }
}
