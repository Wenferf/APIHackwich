//
//  ContentView.swift
//  APIHackwich
//
//  Created by Tucker(School) on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
        
    }
    
    func getJokes() {
        let apiKey = "?rapidapi-key=a4d1d83323mshf9dd61f551662ebp12bf4fjsnf720612eefb1"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
