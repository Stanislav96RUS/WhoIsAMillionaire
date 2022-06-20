//
//  GameResult.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//
//

import UIKit

class AddRequestCell: UITableViewCell {

    static var reuseId: String = "AddRequestCell"
    
    @IBOutlet weak var newRequest: UITextField!
    @IBOutlet weak var answer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var answer3: UITextField!
    @IBOutlet weak var answer4: UITextField!
    @IBOutlet weak var saveButton: buttonStyle!
  
    var textFields: [UITextField] = []
    var delegate: AlertDelegate?
    var delegate2: GameDictonaryDelegate?
   
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = AddQuestionViewController()
        self.delegate2 = GameNewRequest()
         
        textFields = [newRequest, answer1, answer2, answer3, answer4]
        var tag: Int = 0
        for textField in textFields {
            textField.tag = tag
            tag += 1
         //   textField.addTarget(self, action: #selector(editingEnded(_:)), for: .editingDidEnd)
        }
        saveButton.addTarget(self, action: #selector(touchUpInside(_:)), for: .touchUpInside)
    }


    @objc func touchUpInside(_ saveButton: buttonStyle) {
        if  (newRequest.text?.count ?? 0 > 0) &&
            (answer1.text?.count ?? 0 > 0) &&
            (answer2.text?.count ?? 0 > 0) &&
            (answer3.text?.count ?? 0 > 0) &&
            (answer4.text?.count ?? 0 > 0)
        {
            checkNewRequest()
        }
    }
    func checkNewRequest() {
        var count: Int = 0
        var trueAnswer: Int = 0
        for textField in textFields {
            if (textField.tag > 0) && (textField.text?.first == "#") {
             
                let str = textField.text?.dropFirst(1)
                textField.text = String(str!)
                count += 1
                trueAnswer = textField.tag
                break
            }
        }
        if count == 1 {
            let builder = QuestionBuilder()
            builder.newRequest(request: newRequest.text!)
            let arrResponce: [String] = [answer1.text!,answer2.text!,answer3.text!,answer4.text!]
            builder.newListResponce(responce: arrResponce)
            builder.newTrueQuestion(trueQuestion: trueAnswer)
            self.delegate2?.eventNewRequest(data: builder.build())    
            self.delegate?.alerter()
            
            for textField in textFields {
                textField.text = ""
            }
        }
    }
}

   



