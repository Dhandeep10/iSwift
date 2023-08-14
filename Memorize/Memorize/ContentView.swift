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
    @State var isFaceUp: Bool = false
    var body: some View{
        ZStack (content: {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
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
