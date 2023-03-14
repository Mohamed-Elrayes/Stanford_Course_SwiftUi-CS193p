//
//  ContentView.swift
//  Memorize-game
//
//  Created by Mohamed Salah on 15/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       return ZStack (content: {
           
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
           
            Text("Hello , Coder")
           
       })
       .padding(.horizontal)
       .foregroundColor(.red)
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
