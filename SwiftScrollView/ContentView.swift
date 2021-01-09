//
//  ContentView.swift
//  SwiftScrollView
//
//  Created by siweiZhu on 2021/1/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, Aug 20".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Today's Reading")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                }
                Spacer()
            }
            .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Bor der with Rounded Corners", author: "Simon Ng")
                        
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a S imple Editing App", author: "Gabriel Theodoropoulos")
                        
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Compl ex Layout with Flutter", author: "Lawrence Tan")
                        
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
