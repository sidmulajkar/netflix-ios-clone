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
    
    //Movie Detail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var episodes: [Epsiode]?
    
    var prmotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return ""
    }
}
