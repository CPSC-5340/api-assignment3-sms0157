//
//  PokedexModel.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import Foundation

struct PokedexResults : Codable {
    let count : Int
    let next : String
    let results : [Pokemon]
}

struct Pokemon : Codable, Identifiable {
    let id = UUID()
    let name : String
    let url : String
}

struct PokemonDetails : Codable {
    let id : Int
    let height : Int
    let weight : Int
}
