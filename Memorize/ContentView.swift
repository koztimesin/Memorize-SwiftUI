//
//  ContentView.swift
//  Memorize
//
//  Created by Karthus Saffron on 6/28/22.
//  Copyright © 2022 koztimesin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚀", "🛸", "✈️", "🛩", "🛰", "🏍", "🚔", "🚲", "🏎", "🚓", "🛴", "🚁", "🚝", "🚂"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                Button(action: {
                    self.emojiCount -= 1
                }, label: {
                    Text("⊖")
                })
                Spacer()
                Button(action: {
                    self.emojiCount += 1
                }, label: {
                    Text("⊕")
                })
            }
            .font(.largeTitle)
        }
        .padding()
        .foregroundColor(.purple)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String
    let shape = RoundedRectangle(cornerRadius: 15)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(.white)
                Text(content).bold().font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            self.isFaceUp = !self.isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
