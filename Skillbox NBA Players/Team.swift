//
//  Team.swift
//  Skillbox NBA Players
//
//  Created by Leonid Stefanenko on 09.03.2021.
//

import Foundation

struct Team {
    
    let title: String
    let city: String
    let conferention: String
    
    var fullTitle: String {
        var val: String
        if (city == title) {
            val = title
        } else {
            val = city + " " + title
        }
        return val
    }
}
