//
//  LeaderboardBubble.swift
//  Food.io
//
//  Created by Naomi on 16/8/23.
//

import SwiftUI

struct LeaderboardBubble: View {
    
    var RName :String
   // var RLoc : [String]
    var RLoc : String
    var RDesc : String
    @State var RRate : Double = 2.0
    var body: some View {
        VStack(alignment: .leading){
            
            Text(RName)
                .foregroundColor(Color("DarkFont"))
                .font(.custom("Inter-Medium", size:18 ))
            HStack{
              // Text(RLoc[0]+", "+RLoc[1])
                Text(RLoc)
                    .foregroundColor(Color("DarkFont"))
                    .font(.custom("Inter-SemiBold", size:10 ))
                    
        
                    
                RatingView(maxRating: 5, rating: $RRate, starColor: Color(.white),size: 11)
                    .allowsHitTesting(false)
                    .padding(.bottom,2)
            }
            
            Text(RDesc)
                .foregroundColor(Color("DarkFont"))
                .font(.custom("Inter-Regular", size:13 ))
                .padding(.top,3)
            
           
            
        }
        .frame(minHeight: 170)
        .padding(.horizontal)
        .background(Color("PaleOrange"))
        .cornerRadius(16)
        .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("DarkOrange"), lineWidth: 2)
                    
            )
        .frame(minWidth: 180,maxWidth: 180)
        .fixedSize(horizontal: true, vertical: true)
        
       
    
        
        
    
    }
}

struct LeaderboardBubble_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardBubble(RName:"Mikuni",RLoc:"Davis,CA",RDesc: "Hawaiian style poke. You liked the Salmon Bomb and Spicy Salmon Poke ",RRate: 4.0)
    }
}
