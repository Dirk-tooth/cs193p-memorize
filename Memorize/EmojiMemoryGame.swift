//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Trevor Davis on 9/6/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let vehicleEmojis = ["🚂", "🚀", "🚁", "🚜", "✈️", "🚗", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🛴", "🚲", "🚕", "🚟", "🛺", "🛻", "⛵️", "🚡"]
    static let peopleEmojis = ["👩‍🦽", "🚶", "👨‍🦯", "🏃‍♀️", "🧍", "🤸‍♂️", "⛹️‍♀️", "🤺", "🤾‍♂️", "🏌️‍♀️", "🧘‍♀️"]
    static let buildingEmojis = ["🏠", "🏛", "🏯", "🏰", "🏟", "🏥", "🏬", "🏭", "🏦", "🏢",]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in vehicleEmojis[pairIndex]}
    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
   
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
