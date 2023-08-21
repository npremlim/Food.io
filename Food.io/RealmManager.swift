//
//  RealmManager.swift
//  Food.io
//
//  Created by Naomi on 17/8/23.
//

import Foundation
import RealmSwift

class RealmManager : ObservableObject {
    //question mark means this var is optional in case opening realm throws an error
    private(set) var localRealm : Realm?
    //array called tasks containing type Task
    @Published private(set) var restaurants : [Restaurant] = []
    @Published private(set) var topRestaurants : [Restaurant] = []
    
    //whenever we initialize this class we will open realm
    init(){
        openRealm()
        getRestaurants()
        getTopRestaurants()
    }
    
    func openRealm() {
        do{
            //if want to update schema, need code on migrationblock
            let config = Realm.Configuration(schemaVersion: 1)
            Realm.Configuration.defaultConfiguration=config
            
            //realm needs to be "opened" for data to be put into the database
            localRealm = try Realm()
        }catch{
            print("Error opening Realm : \(error)")
        }
    }
    

    
    func addRestaurant(name:String, loc:String, cuisine:String, desc:String, rating:Double ){
        if let localRealm = localRealm {
            do{
                //write into database , transfer data from our schema to database schema
                try localRealm.write{
                    let newRestaurant = Restaurant(value: ["RName":name, "RLoc": loc, "RCuisine": cuisine ,"RDesc":desc, "RRating" : rating])
                    localRealm.add(newRestaurant)
                    getRestaurants()
                    getTopRestaurants()
                    print("Added new restaurant to database : \(newRestaurant)")
                }
            }catch{
                print("Error adding restaurant to database")
            }
        }
    }
    
    func getRestaurants(){
        if let localRealm = localRealm {
            // get all objects of type task in local realm, sorted by if they are completed or not
            let allRestaurants = localRealm.objects(Restaurant.self)
            restaurants = []
            allRestaurants.forEach{ restaurant in
                restaurants.append(restaurant)}
            
        }
    }
    
    func getTopRestaurants(){
        if let localRealm = localRealm {
            // get all objects of type task in local realm, sorted by if they are completed or not
            let allRestaurants = localRealm.objects(Restaurant.self).where{$0.RRating>4}
            topRestaurants = []
            allRestaurants.forEach{restaurant in
                topRestaurants.append(restaurant)}
            
        }
    }
    
    
    
//    func updateTasks(id:ObjectId, completed:Bool){
//        if let localRealm = localRealm {
//            do {
//                let taskToUpdate = localRealm.objects(Task.self).filter(NSPredicate(format:"id == %@",id))
//                guard !taskToUpdate.isEmpty else {return}
//
//                try localRealm.write{
//                    taskToUpdate[0].completed=completed
//                    getTasks()
//                    print("Updated task status to database")
//                }
//
//            }catch{
//                print("Error updating task \(id) to database \(error)")
//            }
//        }
//    }
    
//    func deleteTask( id:ObjectId){
//        if let localRealm = localRealm{
//            do{
//                let taskToDelete = localRealm.objects(Task.self).filter(NSPredicate(format:"id == %@",id))
//                guard !taskToDelete.isEmpty else {return}
//
//                try localRealm.write{
//                    localRealm.delete(taskToDelete)
//                    getTasks()
//                    print("Deleted task from database")
//                }
//
//            }catch{
//                print("Error deleted task from database")
//            }
//        }
//    }
}
