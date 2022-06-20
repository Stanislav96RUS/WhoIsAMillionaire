//
//  ResultCell.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import UIKit

class ResultCell: UITableViewCell {

    static let reuseId = "ResultCell"

    
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var procent: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        score.text = ""
        date.text = ""
        procent.text = ""
    }
 
}
