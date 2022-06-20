//
//  GameStrategy.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation
import UIKit

protocol Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int
}
