//
//  PokedexViewModel.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import Foundation

class PokedexViewModel : ObservableObject {
    
    @Published private(set) var pokemonData = [Pokemon]()
    private let url = "https://pokeapi.co/api/v2/pokemon?limit=151"
    
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print(error)
                    } else {
                        if let results = data {
                            do {
                                let end = try JSONDecoder().decode(PokedexResults.self, from: results)
                                self.pokemonData = end.results
                            } catch {
                                print(error)
                            }
                        }
                    }
                }.resume()
        }
    }
}
