//
//  FavoritesData2.swift
//  CosmosConnect2
//
//  Created by Scholar on 7/17/25.
//

import Foundation
import SwiftData

@Model
class FavoritesData2 {
    var title: String
    var url: String
    var explanation: String

    init(title: String, url: String, explanation: String) {
        self.title = title
        self.url = url
        self.explanation = explanation
    }
}

