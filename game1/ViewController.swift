//
//  ViewController.swift
//  game1
//
//  Created by 无敌帅的yyyyy on 2018/11/19.
//  Copyright © 2018年 无敌帅的yyyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var cardbutton: [UIButton]!
    
    lazy var game=Concentration(numberofPairsofCards: cardbutton.count/2)
    
    @IBOutlet weak var Count: UILabel!
    
    var flipCount = 0{
        didSet{
            Count.text="Count:\(flipCount)"
        }
    }
    
    
    
    @IBAction func Card(_ sender: UIButton) {
      flipCount += 1
        if let cardNumber = cardbutton.index(of:sender){
            game.chooseCard(at:cardNumber)
            updateviewFromModel();
        }
    }
    func updateviewFromModel(){
        for index in cardbutton.indices{
            let button=cardbutton[index]
            let card=game.cards[index]
            if card.isFaceUp{
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }else{
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatchUp ? #colorLiteral(red: 1, green: 0.5212053061, blue: 1, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
    var emoji=[Int:String]()
    
    var emojichoice = ["😛","😍","😘","🤪","🤩","😣","😂","😅"]
    func emoji(for card:Card)->String{
        if emoji[card.identifier]==nil,emojichoice.count>0{
            let RandomIndex=Int(arc4random_uniform(UInt32(emojichoice.count)))
            emoji[card.identifier]=emojichoice.remove(at: RandomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }
    
    
    
    

    
    
   
    
}

