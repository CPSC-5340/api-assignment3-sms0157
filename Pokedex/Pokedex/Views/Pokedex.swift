//
//  ContentView.swift
//  Pokedex
//
//  Created by Sabrina Summerfield on 3/29/24.
//

import SwiftUI

struct Pokedex: View {
    
    @ObservedObject var pokemonvm = PokedexViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(pokemonvm.pokemonData) { pokemon in
                    NavigationLink {
                        PokemonDetail()
                    } label: {
                        Text(pokemon.name)
                    }
                    
                }
                .onAppear {
                    pokemonvm.fetchData()
                }
                .listStyle(.grouped)
                .navigationTitle("Pokedex")
            }
        }
    }
}


#Preview {
    Pokedex()
}
