//
//  Talk.swift
//  CISB2019
//
//  Created by Dario Pellegrini on 05/12/2019.
//  Copyright © 2019 Dario Pellegrini. All rights reserved.
//

import Foundation

struct Talk: Identifiable {
    let id: String
    let title: String
    let image: String
    let description: String
    let minutes: Int
    let start: String
    
    var reaction: String? = nil
}
