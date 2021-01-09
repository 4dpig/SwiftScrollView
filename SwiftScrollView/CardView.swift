//
//  CardView.swift
//  SwiftScrollView
//
//  Created by siweiZhu on 2021/1/7.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack(){
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .minimumScaleFactor(0.5)
                    Text("Written by \(author)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            image: "swiftui-button",
            category: "SwiftUI",
            heading: "Drawing a Bor der with Rounded Corners",
            author: "Simon Ng"
        )
    }
}
