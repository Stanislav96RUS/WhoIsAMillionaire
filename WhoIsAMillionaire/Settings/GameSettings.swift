//
//  GameSettings.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

class GameSettings {
    var status : Bool = false
}

extension GameSettings: GameSettingsDelegate {
    func eventChangeSettings(statusRandom: Bool) {
        Game.shared.randomQuestion?.status = statusRandom
        Game.shared.addRandomState()
    }
}
