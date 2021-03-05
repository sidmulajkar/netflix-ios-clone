//
//  WhiteButton.swift
//  BuildNetflixClone
//
//  Created by Siddhant Mulajkar on 05/03/21.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    
    var action:() -> Void
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                    .padding(.vertical, 3)
                
                Spacer()
            }
            .background(Color.white)
            .foregroundColor(.black)
            .padding(.vertical, 6)
            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            WhiteButton(text: "Play", imageName: "play.fill") {
                //action goes here
            }
        }
    }
}
