//
//  StepToStep.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation
import UIKit

class GameStepToStep: Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int {
        return numberOfQuestion + 1
    }
}
