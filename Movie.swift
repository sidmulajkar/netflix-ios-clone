//
//  Movie.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 01/03/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
