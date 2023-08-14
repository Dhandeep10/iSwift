//
//  ContentView.swift
//  Memorize
//
//  Created by Dhandeep  Singh on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
            }
            HStack {
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
            }
            HStack {
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
                CardView(isFaceUp: false)
            }
        }
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}