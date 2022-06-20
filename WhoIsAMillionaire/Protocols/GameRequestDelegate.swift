//
//  GameRequestDelegate.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation
protocol GameRequestDelegate: class {
    func eventSaveDictRequest(dictRequest: Question)
}
