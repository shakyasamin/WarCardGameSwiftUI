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
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update the scores
        if playerCardValue > cpuCardValue {
            //Add 1 to playerscore card
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue{
            //Add 1 to cpu card value
            cpuScore += 1
        }

        
    }
}

#Preview {
    ContentView()
}
