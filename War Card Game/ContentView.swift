//
//  ContentView.swift
//  War Card Game
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 18/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    var playerScore = 0
    var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
    }
    
    func deal() {
        //Randomize the players card
        playerCard = "card" + String(Int.random(in: 2...14))
        
        //Randomize the cpu card
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        
        //update the scores
        
        
    }
}

#Preview {
    ContentView()
}
