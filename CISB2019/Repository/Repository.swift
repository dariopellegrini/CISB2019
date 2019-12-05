//
//  Repository.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 04/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import Foundation

class Repository: ObservableObject {
    @Published var talks = [Talk]()
    
    init() {
        load()
    }
    
    func load() {
        talks = cisb2019Talks
    }
    
    func setReaction(talk: Talk, value: String) {
        if let index = talks.firstIndex(where: { $0.id == talk.id }) {
               talks[index].reaction = value
           }
       }
}
