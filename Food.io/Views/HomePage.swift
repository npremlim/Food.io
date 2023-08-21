//
//  HomePage.swift
//  Food.io
//
//  Created by Naomi on 9/8/23.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var realmManager : RealmManager
    
    var body: some View {
        VStack(alignment: .leading){
            Text("What's for lunch ?")
                .foregroundColor(Color("AccentPink"))
                .font(.custom("Inter-SemiBold", size:30 ))
                .padding(.bottom)
            Text("Here’s a suggestion based on your past dining patterns :")
                .font(.custom("Inter-Medium", size:14 ))
                .foregroundColor(Color("DarkFont"))
                .padding(.bottom,10)
            
            let randomTopRestaurant = realmManager.topRestaurants.randomElement()!
            
           

            FoodBubble(RName:randomTopRestaurant.RName,RLoc:randomTopRestaurant.RLoc,RDesc:randomTopRestaurant.RDesc)
                .frame(width: 300,height: 150)
                .frame(alignment:.center)
                
            
//            FoodBubble(RName:"Manna Korean",RLoc:"Davis,CA",RDesc:"Korean Restaurant in Davis. Serves KBBQ and a wide variety of korean dishes")
//                            .frame(width: 300,height: 150)
//                            .frame(alignment:.center)
              
 
            
            
        }
        .padding()
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(RealmManager())
    }
}
