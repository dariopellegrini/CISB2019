//
//  VenueView.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import MapKit
import SwiftUI

struct VenueView: View {
    let coordinates = (45.563389, 10.2307456)
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    MapView(coordinates: coordinates)
                    .frame(height: 250)
                    HStack {
                        Image("CISB_2019")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(EdgeInsets(top: 8,leading: 8,bottom: 8,trailing: 8))
                            .frame(width: 126, height: 126)
                            .background(Color.white)
                            .clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(radius: 10)
                    }
                    .padding(.top, -70)
                    
                    Text("CISB 2019")
                        .font(.largeTitle)
                        .padding(.top, 8.0)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                        .font(.body)
                        .padding(.all, 8.0)
                    
                    Button(action: {
                        let url = "http://maps.apple.com/maps?saddr=\(self.coordinates.0),\(self.coordinates.1)"
                        UIApplication.shared.open(URL(string:url)!, options: [:], completionHandler: nil)
                    }) {
                        VStack {
                            Image(systemName: "location")
                            Text("Let's go!")
                        }.foregroundColor(Color("CISB"))
                    }.padding(.all, 16.0)
                }
            }
            .navigationBarTitle("Venue")
        }
    }
}

struct VenueView_Previews: PreviewProvider {
    static var previews: some View {
        VenueView()
    }
}

