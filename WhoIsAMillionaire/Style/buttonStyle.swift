//
//  buttonStyle.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import UIKit

final class buttonStyle: UIButton {

        override func draw(_ rect: CGRect) {
            super.draw(rect)
            
            layer.cornerRadius = 10
            layer.masksToBounds = true
        }
}
