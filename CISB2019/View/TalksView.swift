//
//  TalksView.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import SwiftUI

struct TalksView: View {
    @EnvironmentObject var repository: Repository
    
    var body: some View {
        NavigationView {
            List(repository.talks) { talk in
                NavigationLink(destination: TalkDetailView(talk: talk)) {
                    TalkRow(talk: talk).contextMenu {
                        Button("❤️") {
                            self.repository.setReaction(talk: talk, value: "❤️")
                        }
                        Button("🎁") {
                            self.repository.setReaction(talk: talk, value: "🎁")
                        }
                        Button("🌟") {
                            self.repository.setReaction(talk: talk, value: "🌟")
                        }
                    }
                }
            }
        .navigationBarTitle("Talks")
        }
    }
}

struct TalksView_Previews: PreviewProvider {
    static var previews: some View {
        TalksView()
    }
}
