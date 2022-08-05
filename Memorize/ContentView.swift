//
//  ContentView.swift
//  Memorize
//
//  Created by Trevor Davis on 8/1/22.
//

import SwiftUI

struct ContentView: View {
    var vehicleEmojis = ["🚂", "🚀", "🚁", "🚜", "✈️", "🚗", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🛴", "🚲", "🚕", "🚟", "🛺", "🛻", "⛵️", "🚡"]
    var peopleEmojis = ["👩‍🦽", "🚶", "👨‍🦯", "🏃‍♀️", "🧍", "🤸‍♂️", "⛹️‍♀️", "🤺", "🤾‍♂️", "🏌️‍♀️", "🧘‍♀️"]
    var buildingEmojis = ["🏠", "🏛", "🏯", "🏰", "🏟", "🏥", "🏬", "🏭", "🏦", "🏢",]
    
    @State var emojiCount = 10
    
    @State var currentTheme: [String] = ["🚂", "🚀", "🚁", "🚜", "✈️", "🚗", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🛴", "🚲", "🚕", "🚟", "🛺", "🛻", "⛵️", "🚡"]
    
    

    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(currentTheme.shuffled(), id: \.self) {emoji in CardView(content: emoji)}.aspectRatio(2/3, contentMode: .fit)
                }
                .foregroundColor(.red)
            }

            Spacer()
            
            HStack{
//                \/ Old add/remove buttons
//                remove
//                Spacer()
//                add
                Spacer()
                vehicles
                Spacer()
                people
                Spacer()
                buildings
                Spacer()
            }
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
//    \/ Old add/remove buttons
//    var add: some View {
//        Button {
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
//        } label: {Image(systemName: "plus.circle")}
//    }
//
//    var remove: some View {
//        Button {
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
//        } label: {Image(systemName: "minus.circle")}
//    }
    
    var vehicles: some View {
        Button {
            currentTheme = vehicleEmojis
        } label: {
            VStack {
                Image(systemName: "car")
                Text("Vehicles")
                    .font(.caption)
            }
        }
//        .foregroundColor(currentTheme == "vehicles" ? .red : .blue)
    }
    
    var people: some View {
        Button {
            currentTheme = peopleEmojis
        } label: {
            VStack {
                Image(systemName: "person")
                Text("People")
                    .font(.caption)
            }
        }
//        .foregroundColor(currentTheme == "people" ? .red : .blue)
    }
    
    var buildings: some View {
        Button {
            currentTheme = buildingEmojis
        } label: {
            VStack {
                Image(systemName: "house")
                Text("Buildings")
                    .font(.caption)
            }
        }
//        .foregroundColor(currentTheme == "buildings" ? .red : .blue)
    }
    
}

struct CardView: View {
    var content: String
    
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


// Preview Boilerplate

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            
    }
}
