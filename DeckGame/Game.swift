//
//  Game.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Game {
    func duel(player: Player, ai: Player) {
        var playerTotalScore = 0
        var aiTotalScore = 0
        for card in 0..<player.hand.count {
            var playerScore = 0
            var aiScore = 0
            playerScore += (player.hand[card].rank.rawValue + player.hand[card].suit.rawValue)
            aiScore += (ai.hand[card].rank.rawValue + ai.hand[card].suit.rawValue)
            print("The player has drawn a \(player.hand[card].rank) of \(player.hand[card].suit) worth \(playerScore)")
            print("The ai has drawn a \(ai.hand[card].rank) of \(player.hand[card].suit) worth \(aiScore)")
            if playerScore > aiScore {
                print("The player has scored a point!\n\n")
                sleep(2)
                playerTotalScore += 1
            }else if aiScore > playerScore {
                print("The ai has scored a point!\n\n")
                sleep(2)
                aiTotalScore += 1
            }else {
                print("Neither player has scored.\n\n")
                sleep(2)
            }
        }
        if playerTotalScore > aiTotalScore {
            print("The player has won!")
        }else if aiTotalScore > playerTotalScore {
            print("The ai has won!")
        }else {
            print("The game ended in a draw.")
        }
        
    }
}
