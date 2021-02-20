//
//  ViewController.swift
//  NotesApp
//
//  Created by o11ev on 20.02.2021.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    @IBOutlet var newNoteButton: UIButton!
    @IBOutlet var notesListButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newNoteButton.layer.cornerRadius = 10
        notesListButton.layer.cornerRadius = 10
    }
}

