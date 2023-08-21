//
//  AddRestaurant.swift
//  Food.io
//
//  Created by Naomi on 10/8/23.
//

import SwiftUI

struct AddRestaurant: View {
    @EnvironmentObject var realmManager : RealmManager
    @State var showingAlert = false
    @State private var Rname : String = ""
    @State var RLoc : String = ""
    @State var RDesc : String = ""
    @State var RCuisine : String = ""
    @State var RRating : Double = 2.0
    @Environment(\.dismiss) private var dismiss
   
    var body: some View {
            VStack(alignment: .leading){
               Button{
                    dismiss()

                }label:{
                    Image(systemName: "chevron.left")
                        .padding(.leading,20)
                        . font(.system(size: 20.0))
                        .foregroundColor(Color("DarkFont"))
                }
               

                
                
                VStack(alignment: .leading){
                    
                   
                    Text("Add a new restaurant!")
                        .foregroundColor(Color("DarkOrange"))
                        .font(.custom("Inter-SemiBold", size:30 ))
                        .frame(alignment: .trailing)
                        .padding(.bottom,15)
                    
                    Text("Help us keep track of where you've been")
                        .font(.custom("Inter-Medium", size:14 ))
                        .foregroundColor(Color("DarkFont"))
                        .padding(.bottom,10)
                        
                    
                    TextField("Name of restaurant: ",text: $Rname )
                        .foregroundColor(Color("DarkFont"))
                        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("DarkFont"),lineWidth: 1.0)
                            )
                        .padding(.top)
                        
                        
                        
                    
                    TextField("Location: ",text: $RLoc )
                        .foregroundColor(Color("DarkFont"))
                        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("DarkFont"),lineWidth: 1.0)
                            )
                        .padding(.vertical)
                        
                    
                    Text("Give a small description about your overall thoughts regarding this restaurant:")
                        .font(.custom("Inter-Medium", size:14 ))
                        .foregroundColor(Color("DarkFont"))
                        .padding(.bottom,5)
                    
                   
                    
                    TextField("Description: ",text: $RDesc,axis: .vertical )
                        .foregroundColor(Color("DarkFont"))
                        .padding(EdgeInsets(top: 15, leading: 10, bottom: 10, trailing: 10))
                        .cornerRadius(5)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("DarkFont"),lineWidth: 1.0)
                            )
                        .padding(.bottom)
                        .lineLimit(5,reservesSpace: true)
                        
                    
                  
                    Menu{
                        
                        Picker("Cuisine", selection:$RCuisine){
                            Text("Chinese")
                                .tag("Chinese")
                                .frame(maxWidth: .infinity)
                            Text("Indian")
                                .tag("Indian")
                                .frame(maxWidth: .infinity)
                            Text("Japanese")
                                .tag("Japanese")
                                .frame(maxWidth: .infinity)
                            Text("Korean")
                                .tag("Korean")
                                .frame(maxWidth: .infinity)
                        }
                
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color("DarkFont"))
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("DarkFont"),lineWidth: 1.0)
                            )
                        .padding(.vertical)
                    }label: {
                        HStack{
                            Text("Cuisine")
                                .padding(.trailing,240)
                            Image(systemName: "chevron.down")
                        }
                       
                            .frame(alignment: .leading)
                            .foregroundColor(Color("MainFont"))
                            .frame(maxWidth: .infinity)
                            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                            .cornerRadius(5)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("DarkFont"),lineWidth: 1.0)
                                )
                            .padding(.bottom,15)
                        
                      
                            
                           
                    }
                

                    
                    Text("How was your experience here?")
                        .font(.custom("Inter-Medium", size:18 ))
                        .foregroundColor(Color("DarkFont"))
                    
                    RatingView(maxRating: 5, rating: $RRating, starColor: Color("MidOrange"),size: 50)
                        .padding()
                        .padding(.leading,20)
                        .padding(.bottom,10)
                    
                     
                    HStack{
                        Spacer()
                        Button{
                            showingAlert = true

                            realmManager.addRestaurant(name: Rname, loc: RLoc, cuisine: RCuisine,desc: RDesc, rating: RRating)
                         
                        }label:{
                            Text("ADD")
                                .foregroundColor(.white)
                                .padding(10)
                                .padding(.horizontal)
                                .background(Color("MidPink"))
                                .cornerRadius(40)
                                .frame(alignment: .trailing)
                               
                            
                        }
                        
                        .alert("We've added this restaurant to your leaderboard!", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                .background(Color("DarkPink"))
                                }
                    }
                    
                  
                }
                .padding(20)
                .navigationBarBackButtonHidden(true)
        
        
       
        }
    
       
  
       
    }
}

struct AddRestaurant_Previews: PreviewProvider {
    static var previews: some View {
        AddRestaurant()
            .environmentObject(RealmManager())
    }
}


//different picker options
//Menu {
//                     Button {
//                     } label: {
//                         Label("Chinese", systemImage: "rectangle.stack.badge.plus")
//                     }
//                     Button {
//                     } label: {
//                         Label("New Folder", systemImage: "folder.badge.plus")
//                     }
//                     Button {
//                     } label: {
//                         Label("New Shared Album", systemImage: "rectangle.stack.badge.person.crop")
//                     }
//                 } label: {
//                     Label("Add New", systemImage: "plus")
//                 }
//
//            GroupBox {
//                DisclosureGroup("Cuisine") {
//                    Text("Japanese")
//                    Text("Chinese")
//                    Text("Korean")
//                    Text("Indian")
//                    Text("Western")
//                }
//                .padding()
//                .background(.white)
//            }
//            .background(.white)
       
