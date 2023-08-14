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
            let emojis = ["⍺", "β", "𝛄"]
            HStack {
                CardView(isFaceUp: false, content: emojis[0])
                CardView(isFaceUp: false, content: emojis[1])
                CardView(isFaceUp: false, content: emojis[2])
            }
            HStack {
                CardView(isFaceUp: false, content: emojis[0])
                CardView(isFaceUp: false, content: emojis[1])
                CardView(isFaceUp: false, content: emojis[2])
            }
            HStack {
                CardView(isFaceUp: false, content: emojis[0])
                CardView(isFaceUp: false, content: emojis[1])
                CardView(isFaceUp: false, content: emojis[2])
            }
        }
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    let content: String
    var body: some View{
        ZStack (content: {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {
                base.fill()
            }
        })
        .foregroundColor(.pink)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
