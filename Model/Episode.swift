//
//  Episode.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 21/03/21.
//

import Foundation

struct Epsiode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbanilImageURLString: String   //this is where we are using codeable to get the episode data from api using josn
    var description: String
    var length: String
    
    var thumbnailURL: URL {
        return URL(string: thumbanilImageURLString)!
    }
}
