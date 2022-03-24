//
//  ContentView.swift
//  slot-game
//
//  Created by Clarence on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        
        VStack(spacing: 20.0) {
                Spacer()
                Text("SwiftUI Slots!").font(.largeTitle)
                Spacer()
                Text("Credits: \(credits)")
                Spacer()
                
                HStack {
                    Image("item\(slot1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("item\(slot2)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image("item\(slot3)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            
                Spacer()
                
                Button("Spin") {
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    if (slot1 == slot2 && slot2 == slot3) {
                        credits += 100
                    } else {
                        credits -= 10
                    }
                }
                .padding(10)
                .padding(.horizontal, 40.0)
                .foregroundColor(.white)
                .background(.pink)
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                
                Spacer()
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
