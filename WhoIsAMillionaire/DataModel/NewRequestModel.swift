//
//  NewRequestModel.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

class GameNewRequest: GameDictonaryDelegate{
  
    func eventNewRequest(data: Question) {
        Game.shared.dictQuestion = data

    }
}

