//
//  ViewController.swift
//  Get the book - Share, save and view
//
//  Created by Hemanth Kasoju on 2018-11-12.
//  Copyright © 2018 Hemanth Kasoju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Label variables
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
 //   @IBOutlet weak var summaryLabel: UILabel!
    
    //Text Field
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var publisherField: UITextField!
    @IBOutlet weak var languageField: UITextField!
    @IBOutlet weak var linkField: UITextField!
    
    //@IBOutlet weak var summaryDescription: UITextView!
    
    var gpicker = UIPickerView()
    var lpicker = UIPickerView()
    
    let genreDataDelegate = GenrePickerDelegate()
    let langDataDelegate = LangPickerDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gpicker.delegate = genreDataDelegate
        gpicker.dataSource = genreDataDelegate
        
        lpicker.delegate = langDataDelegate
        lpicker.dataSource = langDataDelegate
        
        genreField.inputView = gpicker
        languageField.inputView = lpicker
    }
    
}
    
class GenrePickerDelegate : ViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
   var genreData = ["Action", "Biography", "Children", "Cookbook", "Comics", "Diaries", "Drama", "Encyclopedia", "History", "Horror", "Romance", "Self Help", "Sci-fi"];
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
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
}

class LangPickerDelegate: ViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var langData = ["English (UK)", "English (US)", "French", "Spanish", "German" ]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return langData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        languageField.text = langData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return langData[row]
    }
}

