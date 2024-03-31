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
    let name : String
    let url : String
    
    var id: Int? {
        return Int(url.split(separator: "/").last?.description ?? "0")
    }
    
    var imageURL: URL? {
        return URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id ?? 0).png")
        
    }

    
}
