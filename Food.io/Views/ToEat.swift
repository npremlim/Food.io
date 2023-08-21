//
//  ToEat.swift
//  Food.io
//
//  Created by Naomi on 16/8/23.
//

import SwiftUI

struct ToEat: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("To-Eat")
                .foregroundColor(Color("DarkOrange"))
                .font(.custom("Inter-SemiBold", size:30 ))
                .frame(alignment: .trailing)
                .padding(.bottom,15)
            
            Text("Here are restaurants you have previously saved")
                .font(.custom("Inter-Medium", size:14 ))
                .foregroundColor(Color("DarkFont"))
                .padding(.bottom,10)
            
            ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
            
            ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
            
            ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
            ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
            ToEatBubble(RName:"Mikuni",RLoc:["Davis","CA"],RDesc: "You have been here 3 times in the past month with each visit having an average of 4.8 stars")
        }
        .padding()
        
    }
}

struct ToEat_Previews: PreviewProvider {
    static var previews: some View {
        ToEat()
    }
}
