//
//  NoteViewController.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import UIKit

class NoteViewController: UIViewController {

    var note: Note!
    
    @IBOutlet var titleTextFiled: UITextField!
    @IBOutlet var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextFiled.text = note.title
        noteTextView.text = note.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
