//
//  ContentView.swift
//  WarGame
//
//  Created by E5000846 on 24/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card-back"
    @State var computerCard = "card-back"
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack{
                Image("logo")
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }.padding(.all)
                
                Spacer()
                
                Button(action: {
                   
                    let playerNo = randomImageGenerate()
                    let ComputerNo = randomImageGenerate()
                    playerCard = "card-" + "\(playerNo)"
                    computerCard = "card-" + "\(ComputerNo)"
                    
                    if(playerNo > ComputerNo){
                        playerScore += 1
                    }else if(playerNo < ComputerNo){
                        computerScore += 1
                    }
                    
                }, label: {
                    Image("deal-button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Player 2")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.largeTitle )
                    }
                    Spacer()
                }.foregroundColor(.white)
            }.padding(100.0)
        }
    }
    
    func randomImageGenerate() -> Int{
        let randNo = Int.random(in: 2...14)
        
        return randNo
        
    }
}
  
#Preview {
    ContentView()
}
