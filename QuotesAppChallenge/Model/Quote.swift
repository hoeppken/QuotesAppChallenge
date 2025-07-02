//
//  Quote.swift
//  QuotesAppChallenge
//
//  Created by Rafael dos Santos Varela on 02.07.25.
//

import Foundation
import SwiftData

@Model

class Quote {
    
    @Attribute(.unique) var id: String
    var text: String = ""
    var author: String = ""
    
    init() {
        id = UUID().uuidString
    }
    
}
