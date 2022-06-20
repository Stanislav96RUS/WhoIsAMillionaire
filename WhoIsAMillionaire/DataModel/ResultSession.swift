//
//  ResultSession.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

struct ResultOfGame: Codable {
    var dateGame: String
    var score: Int
    var procent: Double
    var countRequest: Int
}
