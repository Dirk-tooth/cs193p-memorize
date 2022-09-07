//
//  ContentView.swift
//  Memorize
//
//  Created by Trevor Davis on 8/1/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(viewModel.cards) { card in CardView(card: card)
                .aspectRatio(2/3, contentMode: .fit)
                .onTapGesture {
                    viewModel.choose(card)
                }
            }
            .foregroundColor(.red)
            .padding(.horizontal)
        }

//            Spacer()
//
//            HStack{
//                Spacer()
//                vehicles
//                Spacer()
//                people
//                Spacer()
//                buildings
//                Spacer()
//            }
//            .font(.largeTitle)
        
    }
    
//    var vehicles: some View {
//        Button {
//            currentTheme = vehicleEmojis
//        } label: {
//            VStack {
//                Image(systemName: "car")
//                Text("Vehicles")
//                    .font(.caption)
//            }
//        }
//    }
//
//    var people: some View {
//        Button {
//            currentTheme = peopleEmojis
//        } label: {
//            VStack {
//                Image(systemName: "person")
//                Text("People")
//                    .font(.caption)
//            }
//        }
//    }
//
//    var buildings: some View {
//        Button {
//            currentTheme = buildingEmojis
//        } label: {
//            VStack {
//                Image(systemName: "house")
//                Text("Buildings")
//                    .font(.caption)
//            }
//        }
//    }
    
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}


// Preview Boilerplate

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            
        }
    }
}
