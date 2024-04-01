//
//  PokedexViewModel.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import Foundation

class PokedexViewModel : ObservableObject {
    
    @Published private(set) var pokemonData = [Pokemon]()
    @Published private(set) var pokemonDetailData : PokemonDetails = PokemonDetails(id: 0, weight: 0, height: 0)
    private let url = "https://pokeapi.co/api/v2/pokemon?limit=1025"
    
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
    
    func fetchDataDetails(id: Int) {
        print(id)
        if let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)/") {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print(error)
                    } else {
                        if let results = data {
                            do {
                                let end = try JSONDecoder().decode(PokemonDetails.self, from: results)
                                
                                DispatchQueue.main.async {
                                    self.pokemonDetailData = end
                                }
                            } catch {
                                print(error)
                            }
                        }
                    }
                }.resume()
            
        }
    }
}
