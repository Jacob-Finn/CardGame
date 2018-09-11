//
//  Game.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Game {
    func duel() {
        var scores = [Int]()
        
        for player in totalPlayers {
            var playerScore = 0
            for card in player.hand {
               playerScore += (card.rank.rawValue + card.suit.rawValue)
            }
            scores.append(playerScore)
        }
        print("and the player scores are \(scores)")
        var highestScore = 0
        var highestScoreSpot = 0
        for (index,score) in scores.enumerated() {
            if score > highestScore {
                highestScore = score
                highestScoreSpot = index
            }
        }
        print("Player \(highestScoreSpot + 1) has the highest score of \(highestScore)")
    }
    
    
    
}
