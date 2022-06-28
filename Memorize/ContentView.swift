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
            ZStack {
                    RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 3)
                    
                    Text("Hello, World!")
                        .bold()
                }
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
                
                Text("Hello, World!")
                    .bold()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
                
                Text("Hello, World!")
                    .bold()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 3)
                
                Text("Hello, World!")
                    .bold()
            }
        }
        .padding()
        .foregroundColor(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
