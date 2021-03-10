//
//  Player.swift
//  Skillbox NBA Players
//
//  Created by Leonid Stefanenko on 09.03.2021.
//

import Foundation

struct Player {
    let firstName: String
    let lastName: String
    let teamName: String
    let position: String
    
    let height: String
    
    var fullName: String {
        firstName + " " + lastName
    }
}
