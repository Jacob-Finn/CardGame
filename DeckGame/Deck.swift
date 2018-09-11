//
//  Deck.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Deck
{
    var createdDeck = [Card]()
    
    func populateDeck() {
        for suit in allSuits {
            for rank in allRanks {
                let card = Card(suit: suit, rank: rank)
                createdDeck.append(card)
            }
        }
        print(createdDeck.count)
    }
    
    func shuffleDeck () {
        for card in 0..<createdDeck.count {
            let randomPositon = Int(arc4random_uniform(UInt32(createdDeck.count - 1)))
            createdDeck.swapAt(card , randomPositon)
        }
        
    }
    
    func retrieveCards() {
        for player in totalPlayers {
          player.returnHand(cardlist: &createdDeck)
        }
    }
    
    
    
    func disperseCards () {
        retrieveCards()
        for player in totalPlayers {
            for _ in 0..<11  {          // each hand gets 10 cards
                player.hand.append(createdDeck[0])
                createdDeck.removeFirst()
            }
        }
    }
    
    func printDeck() {
        for card in createdDeck {
            print("\(card.rank) of \(card.suit)")
        }
        print("\n\n\n\n")
    }
    
    
}




