//
//  MovieDetail.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 06/03/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        //close this view
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }.padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubHeadline(movie: movie)
                        
                        //watch season3 or 2 something like that which appears after the main start buttons
                        if movie.prmotionHeadline != nil{
                            Text(movie.prmotionHeadline!)
                            
                        }
                    }
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie4)
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HDButton()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray)
            
            Text(rating).foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 60, height: 20)
    }
}

struct HDButton: View {
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.gray)
            
            Text("HD").foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 30, height: 20)
    }
}
