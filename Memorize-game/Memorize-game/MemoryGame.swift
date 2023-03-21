//
//  MemoryGame.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 21/03/2023.
//

import Foundation

struct MemoryGame<CardContent> {
    
    init(numberOfPairsOfCard : Int , createCardContent: (Int)-> CardContent){
        
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCard{
            
            let content = createCardContent(pairIndex)
            
            cards.append(Card(content: content))
            cards.append(Card(content: content))
            
        }
    }
    
   private(set) var cards : Array<Card>
    
    func choose(_ card : Card){
        
    }
    
    struct Card{
        var isFaceUp : Bool = false
        var isMatched : Bool = false
        var content : CardContent
    }
}
