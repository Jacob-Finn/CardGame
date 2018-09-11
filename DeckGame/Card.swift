//
//  Card.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation

enum Suit: Int {
    case clubs = 1
    case diamonds = 2
    case hearts = 3
    case spades = 4
}
let allSuits = [Suit.clubs, Suit.diamonds, Suit.hearts, Suit.spades]


enum Rank: Int {
    case Two = 2
    case Three
    case Four
    case Five
    case Six
    case Seven
    case Eight
    case Nine
    case Ten
    case Jack
    case Queen
    case King
    case Ace
}
let allRanks = [Rank.Two, Rank.Three, Rank.Four, Rank.Five, Rank.Six, Rank.Seven, Rank.Eight, Rank.Nine, Rank.Ten, Rank.Jack, Rank.Queen, Rank.King, Rank.Ace]

class Card {
    let suit: Suit
    let rank: Rank
    
    init(suit: Suit, rank: Rank) {
        self.suit = suit
        self.rank = rank
    }
    
}
