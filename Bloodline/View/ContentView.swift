//
//  ContentView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var movie: [Movie] = moviesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 150) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                .background(.black)
                
                Text("Mafia Info")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                OperationsView()
                    .frame(maxWidth: 640)
                
                Text("Mafia Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }
                
                Text("Mafia Guide")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(movie) { item in
                        MovieCardView(movie: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Mafia")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Everything you need to know about power, loyalty, and running the family business.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(uiColor: .label))
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

#Preview {
    ContentView()
}
