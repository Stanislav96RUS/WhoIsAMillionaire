//
//  GameResult.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

protocol GameResultDelegate: class {
    func eventEndGame(result: Int)
}
