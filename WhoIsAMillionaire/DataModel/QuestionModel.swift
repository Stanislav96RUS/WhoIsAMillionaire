//
//  QuestionModel.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

struct Question: Codable {
    var question: [ Int:String ] = [
        1:"Что Люк Скайуокер потерял в битве с Дартом Вейдером?",
        2:"Какое оружие предпочитает Чубакка?",
        3:"Кем Дарт Вейдер приходится Люку Скайуокеру?",
        4:"Как раньше звали Дарта Вейдера?",
        5:"Что означает имя Йода на санскрите?"
    ]
    var response: [ Int:[String] ] = [
        1: ["Его левая рука","Его левая нога","Его правая рука","Его левая нога"],
        2: ["Бластерная винтовка","Боукастер","Лазерный меч","Металлический клуб"],
        3: ["Это его учитель","Это его брат","Это его отец","Это его дедушка"],
        4: ["Джордж","Энакин","Оби-Ван","Палпатин"],
        5: ["Просветлённый","Боец","Знаток","Зелёный"]
    ]
    var trueQuestion: [ Int:Int ] = [
        1:3,2:2,3:3,4:2,5:2
    ]
}




