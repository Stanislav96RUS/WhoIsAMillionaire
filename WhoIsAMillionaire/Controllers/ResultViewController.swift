//
//  ResultViewController.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import UIKit

class ResultViewController: UITableViewController {


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.results.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell" , for: indexPath) as! ResultCell
        self.configure(cell: cell, indexPath: indexPath)
        return cell
    }

    func configure (cell: ResultCell,indexPath: IndexPath) {
        DispatchQueue.main.async {
            cell.score.text? = "Правильных ответов "+String(Game.shared.results[indexPath.row].score)+" из "
                + String(Game.shared.results[indexPath.row].countRequest)
            cell.date.text = Game.shared.results[indexPath.row].dateGame
            cell.procent.text? = "Результат в процентах: "+String(Game.shared.results[indexPath.row].procent)+" %"

        }
    }

 }
