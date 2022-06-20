//
//  RecordsCaretaker.swift
//  WhoIsAMillionaire
//
//  Created by Stanislav on 02.06.2022.
//

import Foundation

final class RecordsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let keyResult = "records"
    private let keyRandom = "statusRandom"
    private let keyQuestion = "question"
    
    func saveResults(records: [ResultOfGame]) {
        do {
            let data = try self.encoder.encode(records)
            UserDefaults.standard.set(data, forKey: keyResult)
        } catch {
            print(error)
        }
    }

    func saveSettings(state: Bool) {
        do {
            let data = try self.encoder.encode(state)
            UserDefaults.standard.set(data, forKey: keyRandom)
        } catch {
            print(error)
        }
    }
    
    func saveQuestion(question: Question) {
        do {
            let data = try self.encoder.encode(question)
            UserDefaults.standard.set(data, forKey: keyQuestion)
        } catch {
            print(error)
        }
    }
    
    
    func retrieveRecords() -> [ResultOfGame] {
        guard let data = UserDefaults.standard.data(forKey: keyResult) else {
            return []
        }
        do {
            return try self.decoder.decode([ResultOfGame].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
    
    func retrieveStatusRandom() -> Bool {
        guard let data = UserDefaults.standard.data(forKey: keyRandom) else {
            return false
        }
        do {
            return try self.decoder.decode(Bool.self, from: data)
        } catch {
            print(error)
            return false
        }
    }
    
    func retrieveQuestion() -> Question {
         guard let data = UserDefaults.standard.data(forKey: keyQuestion) else {
             return Question()
         }
         do {
             return try self.decoder.decode(Question.self, from: data)
         } catch {
             print(error)
             return Question()
         }
     }
    
}
