//
//  PokemonDetailsModel.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/31/24.
//

import Foundation

struct PokemonDetails : Decodable, Identifiable {
    let id : Int
    let weight : Int
    let height : Int
    
}
