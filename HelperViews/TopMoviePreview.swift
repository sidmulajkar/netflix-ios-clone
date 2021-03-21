//
//  TopMoviePreview.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 05/03/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    //this is for the small dot image after the main image displaying the categories
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count //4
        //if 0 + 1 !=4
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //action goes here
                        
                    }
                    Spacer()
                    
                    WhiteButton(text: "play", imageName: "play.fill") {
                        // play button code goes here
                    }
                    .frame(width: 120)
                    
                    Spacer() 
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //detail action again goes here
                    }
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                .padding(.top, 250)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
