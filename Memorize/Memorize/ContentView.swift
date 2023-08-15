//
//  ContentView.swift
//  Memorize
//
//  Created by Dhandeep  Singh on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var cardCount: Int = 4
    var body: some View {
        VStack{
            let emojis = ["⍺", "β", "𝛄", "𝛅", "𝜃", "μ", "𝛜"]
            
            HStack {
                ForEach(0..<cardCount, id: \.self) {
                    index in CardView(content: emojis[index])
                }
            }
//            HStack {
//                ForEach(0..<3, id: \.self) {
//                    index in CardView(content: emojis[index])
//                }
//            }
//            HStack {
//                CardView(isFaceUp: false, content: emojis[0])
//                CardView(isFaceUp: false, content: emojis[1])
//                CardView(isFaceUp: false, content: emojis[2])
//            }
            HStack {
                Button(action: {
                    if (cardCount > 1){
                        cardCount -= 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.fill.badge.minus")
                })
                Spacer()
                Button(action: {
                    if (cardCount < emojis.count) {
                        cardCount += 1
                    }
                }, label: {
                    Image(systemName: "rectangle.stack.fill.badge.plus")
                })
            }
            .font(.largeTitle)
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
