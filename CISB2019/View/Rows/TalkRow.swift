//
//  TalkRow.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import SwiftUI

struct TalkRow: View {
    let talk: Talk
    
    var body: some View {
        HStack {
            Image(systemName: talk.image)
                .padding(.all, 16.0)
            VStack(alignment: .leading) {
                Text(talk.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Text(talk.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Text(talk.reaction ?? "")
        }.frame(height: 96)
    }
}

struct TalkRow_Previews: PreviewProvider {
    static var previews: some View {
        TalkRow(talk: cisb2019Talks[0])
    }
}
