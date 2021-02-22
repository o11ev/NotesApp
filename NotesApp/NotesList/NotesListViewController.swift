//
//  NotesListViewController.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import UIKit

class NotesListViewController: UITableViewController {
    
    var notes = Note.getNotes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }

    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "note", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let note = notes[indexPath.row]
        
        content.text = note.title
        content.secondaryText = note.text
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let noteVC = segue.destination as! NoteViewController
            noteVC.note = notes[indexPath.row]
            noteVC.noteIndex = indexPath.row
        }
    }
    

}
