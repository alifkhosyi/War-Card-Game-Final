//
//  ContentView.swift
//  War Card Game
//
//  Created by Alif Khosyi Rahmatullah on 20/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var PlayerCard = "card5"
    @State var CPUCard = "card8"
    @State var PlayerScore = 0
    @State var CPUScore = 0
    
    
    var body: some View {
        ZStack{
            Image("background")
                .edgesIgnoringSafeArea(.all)
     
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(PlayerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                    }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...4)
                    
                    PlayerCard = "card" + String(playerRand)
                    CPUCard = "card" + String(cpuRand)
                    
                    if PlayerCard>CPUCard {
                        PlayerScore += 1
                    }
                    else{
                        CPUScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                  
                Spacer()
                    HStack{
                        Spacer()
                        VStack(spacing:30){
                        Text("Player").font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            Text(String(PlayerScore)).font(.title).fontWeight(.semibold).foregroundColor(.white)}
                        Spacer()
                            VStack(spacing:30){
                                Text("CPU")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                 
                                Text(String(CPUScore)).font(.title).fontWeight(.semibold).foregroundColor(.white)
                             
                            }
                        Spacer()
                    }
                        Spacer()
            }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
