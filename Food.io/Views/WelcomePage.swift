//
//  WelcomePage.swift
//  Food.io
//
//  Created by Naomi on 14/8/23.
//

import SwiftUI

struct WelcomePage: View {
    @State var count = 0
    var body: some View {
        NavigationStack{
            VStack (alignment: .leading, spacing: 20) {
                Text("What's for lunch today?")
                    .foregroundColor(Color("AccentPink"))
                    .font(.custom("Inter-Bold", size:50 ))
                
                Text("Foodie helps you keep track of restaurants you’ve visited and how much you liked your experience there ")
                    .foregroundColor(Color("DarkOrange"))
                    .font(.custom("Inter-Medium", size:20 ))
                    .frame(width: 300)
                Spacer()
                    .frame(height: 150)
                
                
                NavigationLink {
                    // destination view to navigation to
                    AddRestaurant()
                } label: {
                    Text("GET STARTED TODAY")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .background(Color("DarkOrange"))
                        .cornerRadius(50)
                        .font(.custom("Inter-Medium", size:17 ))
                }
                
                
                
                
                
                
                
                HStack{
                    Spacer()
                    Text("ALREADY HAVE AN ACCOUNT?")
                        .font(.custom("Inter-Medium", size:14 ))
                        .foregroundColor(Color("MainFont"))
                    Text("LOG IN")
                        .font(.custom("Inter-Medium", size:14 ))
                        .foregroundColor(Color("DarkOrange"))
                    
                    Spacer()
                }
                
                
                
                
                
                
                
            }
            .padding(20)
            .navigationTitle("")
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
