//
//  ContentView.swift
//  Moonshot
//
//  Created by Andrii Kyrychenko on 05/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var isGrid = true
    
    @State private var columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: astronauts)
                        } label: {
                            if isGrid {
                                VStack {
                                    ImageMissionView(nameImage: mission.image)
                                        .frame(width: 100, height: 100)
                                        .padding()

                                    BriefDescriptionView(displayName: mission.displayName, formattedLaunchDate: mission.formattedLaunchDate)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground))
                            } else {
                                HStack {
                                    ImageMissionView(nameImage: mission.image)
                                        .frame(width: 100, height: 100)
                                        .padding()

                                    BriefDescriptionView(displayName: mission.displayName, formattedLaunchDate: mission.formattedLaunchDate)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground))
                            }
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                HStack {
                    Button {
                        isGrid = false
                        columns = [
                            GridItem(.adaptive(minimum: 15000))
                        ]
                    } label: {
                        Image(systemName: "equal.square")
                    }
                    
                    Button {
                        isGrid = true
                        columns = [
                            GridItem(.adaptive(minimum: 150))
                        ]
                    } label: {
                        Image(systemName: "plus.square")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
