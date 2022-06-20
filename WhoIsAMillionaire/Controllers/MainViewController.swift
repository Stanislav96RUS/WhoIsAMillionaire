//
//  MainViewController.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import UIKit

final class MainViewController: UIViewController {

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goGame":
            Game.shared.countTrueResponce = GameSession()
        case "goSettings":
            Game.shared.randomQuestion = GameSettings()
        default:
            break
        }
    }
    
}
