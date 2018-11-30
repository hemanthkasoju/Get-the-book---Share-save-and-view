//
//  Book.swift
//  Get the book - Share, save and view
//
//  Created by Anil Varma Keerthipati on 2018-11-27.
//  Copyright © 2018 Hemanth Kasoju. All rights reserved.
//

import UIKit

class Book {
    
    var bookId : String
    var title : String
    var author : String
    var genre : String
    var publisher : String
    var languange : String
    var url : String
    
    init?(bookId : String, title : String, author : String, genre : String, publisher : String, languange : String, url : String ){
        
        if bookId.isEmpty{
            return nil
        }
        
        self.bookId = bookId
        self.title = title
        self.author = author
        self.genre = genre
        self.publisher = publisher
        self.languange = languange
        self.url = url
    }
}
