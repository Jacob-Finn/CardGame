//
//  PlayerHand.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation

class Player  {
    let deck = Deck()
    var hand: [Card]
    

    init() {
        self.hand = [Card]()
        totalPlayers.append(self)
    }
    func printHand () {
        for card in hand {
            print("\(card.rank) of \(card.suit)")
        }
    }
    func returnHand ( cardlist: inout [Card]) {
        for card in hand {
            cardlist.append(card)
        }
        self.hand.removeAll()
    }
    

    
}


var totalPlayers = [Player]()
