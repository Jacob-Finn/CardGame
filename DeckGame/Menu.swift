//
//  Menu.swift
//  DeckGame
//
//  Created by Jacob Finn on 9/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
class Menu {
    
    let deck = Deck()
    let player1 = Player()
    let player2 = Player()
    let game = Game()
    
    func start() {
        deck.populateDeck()
        print("""
        Menu commands:
        1. Shuffle Deck
        2. Disperse Cards
        3. Print Deck
        4. Print Hand
        5. Help
        6. Duel
        7. Quit
        """)
        while 1 == 1 {
            checkInput()
        }
    } // End of start
    
    
    
    func checkInput () {
        let userChoice = InputManager.playerInput(numberOfChoices: 6)
        
        switch userChoice {
        case 1:
            deck.shuffleDeck()
        case 2:
            deck.disperseCards()
        case 3:
            deck.printDeck()
        case 4:
            player1.printHand()
        case 5:
            help()
        case 6:
            duel()
        case 7:
            quit()
        default:
            break
        }
    } // End of CheckInput
    
    
    func quit() {
        exit(25)
    }
    func help() {
        print("""
        Menu commands:
        1. Shuffle Deck
        2. Disperse Cards
        3. Print Deck
        4. Print Hand
        5. Help
        6. Duel
        7. Quit
        """)
    }
    func duel() {
        game.duel()
    }
}
