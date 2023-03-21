//
//  EmojiMemory.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 21/03/2023.
//

import SwiftUI


class EmojiMemoryGame {
    
   static let emojis: [String] =  [ "✈️" , "🪴" , "🐲" , "🐕"  , "🌵" , "🌳" , "🍄" , "🐚" , "🪵" , "🦫" , "🍰" , "🍫" , "🍙"  , "🏆" , "🏝️" , "🧲"  , "💎" , "❇️" , "🔞"]
    
    static func createMemoryGame()-> MemoryGame<String> {
        
        MemoryGame<String>(numberOfPairsOfCard: 4) {  index in emojis[index] }
        
    }
    
    private(set) var model : MemoryGame<String> = createMemoryGame()
       
    
    
}
