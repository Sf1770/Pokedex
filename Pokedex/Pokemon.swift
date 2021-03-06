//
//  Pokemon.swift
//  Pokedex
//
//  Created by Sabrina Fletcher on 9/7/17.
//  Copyright © 2017 Sabrina Fletcher. All rights reserved.
//

import Foundation


class Pokemon{
    
    private var _name: String!
    private var _pokedexID: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _baseAttk: String!
    private var _nextEvoTitle: String!
    
    
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
