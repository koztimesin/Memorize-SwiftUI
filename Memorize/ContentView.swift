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
        ZStack {
            RoundedRectangle(cornerRadius: 15)
            .stroke(lineWidth: 3)
            
            Text("Hello, World!")
                .foregroundColor(.purple)
                .bold()
        }
        .foregroundColor(.purple)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
