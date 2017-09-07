//
//  Pokemon.swift
//  Pokedex
//
//  Created by Sabrina Fletcher on 9/7/17.
//  Copyright © 2017 Sabrina Fletcher. All rights reserved.
//

import Foundation


class Pokemon{
    
    fileprivate var _name: String!
    fileprivate var _pokedexID: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexID: Int {
        return _pokedexID
    }
    
    init(name: String, pokedexId: Int){
        
        self._name = name
        self._pokedexID = pokedexId
        
    }
    
}
