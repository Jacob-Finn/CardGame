//
//  InputManager.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation

class InputManager {

    
    static func playerInput (numberOfChoices: Int) -> Int {
        var selectionMade = false
        repeat {
          let userInput = readLine()
            
            if userInput?.lowercased() == "clear" { // a helpful function if the console is starting to get too cluttered.
                print("\n\n\n\n\n\n\n\n\n\n")
                break;
            } else if let userInput = Int(userInput!) {
                if (userInput <= 0) {
                    print("Did you really think that would work?") // Entering a negative number gives you a specific response. Kind of sarcastic.
                    continue
                }
                if (userInput > numberOfChoices) {
                    print("Not a valid option! There are only \(numberOfChoices) choices!")
                    continue
                }
                selectionMade = true
                return userInput
            }else {
                print("Not a valid selection!")
            }
        } while !selectionMade
        return -3 // Error return
    }
}
