//
//  ContentView.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var repository: Repository
    
    var body: some View {
        TabView {
            TalksView().tabItem {
                Image(systemName: "list.bullet")
                Text("Talks")
            }.tag(0)
            
            VenueView().tabItem {
                Image(systemName: "mappin.and.ellipse")
                Text("Venue")
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
