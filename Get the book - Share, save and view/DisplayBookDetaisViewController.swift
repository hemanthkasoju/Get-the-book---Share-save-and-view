//
//  DisplayBookDetaisViewController.swift
//  Get the book - Share, save and view
//
//  Created by Anil Varma Keerthipati on 2018-11-27.
//  Copyright © 2018 Hemanth Kasoju. All rights reserved.
//

import UIKit

class DisplayBookDetaisViewController: UIViewController {

    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var publisherName: UILabel!
    @IBOutlet weak var languageName: UILabel!
    @IBOutlet weak var url: UILabel!
    
    @IBAction func shareTapped(_ sender: Any) {
        let activityController = UIActivityViewController(activityItems: [titleName.text!], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
