//
//  PokemonDetailsModel.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/31/24.
//

import Foundation

struct PokemonDetails : Codable, Identifiable {
    let id : Int
    let weight : Int
    let height : Int
    let base_experience : Int
    let order : Int
    
}
