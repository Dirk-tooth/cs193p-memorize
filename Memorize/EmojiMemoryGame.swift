//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Trevor Davis on 9/6/22.
//

import SwiftUI

//func makeCardContent(Index: Int) -> String {
//    return "😅"
//}

class EmojiMemoryGame {
    
    static let vehicleEmojis = ["🚂", "🚀", "🚁", "🚜", "✈️", "🚗", "🚙", "🏎", "🛵", "🏍", "🚌", "🚐", "🚛", "🛳", "🚑", "🛩", "🛴", "🚲", "🚕", "🚟", "🛺", "🛻", "⛵️", "🚡"]
    static let peopleEmojis = ["👩‍🦽", "🚶", "👨‍🦯", "🏃‍♀️", "🧍", "🤸‍♂️", "⛹️‍♀️", "🤺", "🤾‍♂️", "🏌️‍♀️", "🧘‍♀️"]
    static let buildingEmojis = ["🏠", "🏛", "🏯", "🏰", "🏟", "🏥", "🏬", "🏭", "🏦", "🏢",]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in vehicleEmojis[pairIndex]}
    }
    
//    private(set) var model: MemoryGame<String>
    private var model: MemoryGame<String> = createMemoryGame()
   
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func Foo() -> Array<String> {
        return EmojiMemoryGame.vehicleEmojis
    }
}
