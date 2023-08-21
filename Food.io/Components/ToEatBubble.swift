//
//  ToEatBubble.swift
//  Food.io
//
//  Created by Naomi on 16/8/23.
//

import SwiftUI

struct ToEatBubble: View {
    var RName :String
    var RLoc : [String]
    var RDesc : String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(RName)
                    .foregroundColor(Color("DarkFont"))
                    .font(.custom("Inter-Medium", size:18 ))
                   
                Text(RLoc[0]+", "+RLoc[1])
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
        .background(Color("LightPink"))
        .cornerRadius(20)
        .padding(.vertical,10)
        .shadow(color:Color("MainFont"),radius: 5)
    }
}

struct ToEatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
    }
}
