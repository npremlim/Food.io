//
//  FoodBubble.swift
//  Food.io
//
//  Created by Naomi on 16/8/23.
//

import SwiftUI

struct FoodBubble: View {
    var RName :String
    var RLoc : String
    var RDesc : String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(RName)
                    .foregroundColor(Color("DarkFont"))
                    .font(.custom("Inter-Medium", size:18 ))
                   
                Text(RLoc)
                    .foregroundColor(Color("MainFont"))
                    .font(.custom("Inter-Regular", size:10 ))
                    .padding(.top,3)
                    
            }
            
            Text(RDesc)
                .foregroundColor(Color("DarkFont"))
                .font(.custom("Inter-Regular", size:13 ))
                .padding(.top,3)
            
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color("AccentPink"),lineWidth: 2.0)
            )
        
    }
    
}

struct FoodBubble_Previews: PreviewProvider {
    static var previews: some View {
        FoodBubble(RName:"Mikuni",RLoc:"Davis,CA",RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
    }
}

