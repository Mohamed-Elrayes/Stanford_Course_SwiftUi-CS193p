//
//  ContentView.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        return HStack  {
            
            CardView(content: "✈️")
            CardView(content: "🪴")
            CardView(content: "🐲")
            CardView(content: "🐕")
            
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView:View{
    var content : String
   @State var isFaceUp : Bool = true
    
    
    var body: some View{
        
        ZStack  {
            
            let shape =  RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                
                shape.fill().foregroundColor(.white)
            
                shape.stroke(lineWidth: 3)

                Text(content).font(.largeTitle)
                
            }else{
                
                shape.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
            
            
    }
}
