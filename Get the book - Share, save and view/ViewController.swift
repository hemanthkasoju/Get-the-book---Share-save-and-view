//
//  ViewController.swift
//  Get the book - Share, save and view
//
//  Created by Hemanth Kasoju on 2018-11-12.
//  Copyright © 2018 Hemanth Kasoju. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    //Label variables
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    //Text Field
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var publisherFIeld: UITextField!
    @IBOutlet weak var languageField: UITextField!
    @IBOutlet weak var linkField: UITextField!
    
    @IBOutlet weak var summaryDescription: UITextView!
    
    var genreData = ["Action", "Biography", "Children", "Cookbook", "Comics", "Diaries", "Drama", "Encyclopedia", "History", "Horror", "Romance", "Self Help", "Sci-fi"];
    
    //var langData = ["English (UK)", "English (US)", "French", "Spanish", "German" ]
    
    var picker = UIPickerView()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genreData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genreField.text = genreData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genreData[row]
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        genreField.inputView = picker
        
       
    }

}

