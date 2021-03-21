//
//  HomeVM.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 01/03/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    //String == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Scifi Movies"] = exampleMovies.shuffled()
    }

}
