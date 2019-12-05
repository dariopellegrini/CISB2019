//
//  TalkDetailView.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import SwiftUI

struct TalkDetailView: View {
    @EnvironmentObject var repository: Repository
    
    let talk: Talk
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Color("CISB")
                    Image(systemName: talk.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 96, height: 96).foregroundColor(.white)
                }.frame(height: 220)
                
                Text(talk.title)
                    .font(.title)
                    .padding(.all, 16.0)
                
                Text("\(talk.start) - \(talk.minutes) min.")
                    .font(.subheadline)
                    .padding(.all, 16.0)
                
                Text(talk.description)
                    .font(.body)
                    .padding(.all, 16.0)
                
                Text(talk.reaction ?? "🐱")
                    .font(.title)
                    .padding(.all, 16.0).contextMenu {
                        Button("❤️") {
                            self.repository.setReaction(talk: self.talk, value: "❤️")
                        }
                        Button("🎁") {
                            self.repository.setReaction(talk: self.talk, value: "🎁")
                        }
                        Button("🌟") {
                            self.repository.setReaction(talk: self.talk, value: "🌟")
                        }
                    }

            }
        }
        .navigationBarTitle(talk.title)
    }
}

struct TalkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TalkDetailView(talk: Talk(id: "id1", title: "SwiftUI", image:"folder", description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs. With a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written.", minutes: 45, start: "12.00"))
    }
}
