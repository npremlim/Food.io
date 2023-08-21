//
//  Leaderboard.swift
//  Food.io
//
//  Created by Naomi on 9/8/23.
//

import SwiftUI
import WrappingHStack

struct Leaderboard: View {
    @EnvironmentObject var realmManager : RealmManager
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    NavigationLink {
                        AddRestaurant()
                    }label:{
                        Image(systemName: "plus")
                            .foregroundColor(Color("DarkPink"))
                            .font(.system(size: 34))
                    }
                    
                }
               
                
                Text("Leaderboard")
                    .foregroundColor(Color("DarkPink"))
                    .font(.custom("Inter-SemiBold", size:30 ))
                    .frame(alignment: .trailing)
                    .padding(.bottom,15)
                
                Text("Your Top Restaurants the past month!")
                    .font(.custom("Inter-Medium", size:14 ))
                    .foregroundColor(Color("DarkFont"))
                    .padding(.bottom,20)
                
                
                WrappingHStack(alignment:.leading){
                    ForEach(realmManager.restaurants, id: \.id){
                        
                        restaurant in
                        
                        
                        LeaderboardBubble(RName:restaurant.RName,RLoc:restaurant.RLoc,RDesc: restaurant.RDesc,RRate: restaurant.RRating)
                            .padding(.bottom,10)
                    }
                    
                }
                .frame(width:375)
                
                
                
                
                

//                HStack{
//                    LeaderboardBubble(RName:"Mikuni",RLoc:"Davis,CA",RDesc: "Hawaiian style poke. You liked the Salmon Bomb and Spicy Salmon Poke ",RRate: 4.0)
//
//                    LeaderboardBubble(RName:"Mikuni",RLoc:"Davis,CA",RDesc: "Hawaiian style poke. You liked the Salmon Bomb and Spicy Salmon Poke ",RRate: 4.0)
//
//                }
                   
            }
            .padding()
            
        }
       
       
       
    }
}

struct Leaderboard_Previews: PreviewProvider {
    static var previews: some View {
        Leaderboard()
            .environmentObject(RealmManager())
        
    }
}
