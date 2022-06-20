//
//  SaveNewRequestModel.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

class GameSaveDictonary: GameSaveDictonaryDelegate {
    func eventSaveNewRequest() {
        Game.shared.saveNewDictonary()
    }
}
