//
//  ContentView.swift
//  Memorize
//
//  Created by Karthus Saffron on 6/28/22.
//  Copyright © 2022 koztimesin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .foregroundColor(.purple)
    }
}

struct CardView: View {
    var isFaceUp: Bool { return false }
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill()
                    .foregroundColor(.white)
                
                Text("🚀")
                    .bold()
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 15)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
