//
//  Restaurant.swift
//  Food.io
//
//  Created by Naomi on 17/8/23.
//

import Foundation
import RealmSwift

class Restaurant : Object, ObjectKeyIdentifable {
    //auto generated object id from realm
    
    @Persisted(primaryKey: true) var id : ObjectId
    @Persisted var RName = ""
    @Persisted var RLoc = ""
    @Persisted var RDesc = ""
    @Persisted var RCuisine = ""
    @Persisted var RRating = 0.0
    
    
}
  
