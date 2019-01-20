//
//  Concentration.swift
//  game1
//
//  Created by 无敌帅的yyyyy on 2018/11/20.
//  Copyright © 2018年 无敌帅的yyyy. All rights reserved.
//

import Foundation
struct Concentration{
    var cards = [Card]()
    var indexOfthecardFaceup:Int?
    mutating func chooseCard(at index:Int){
        if !cards[index].isMatchUp{
            if let matchIndex=indexOfthecardFaceup,matchIndex != index{
                if cards[matchIndex].identifier==cards[index].identifier{
                    cards[matchIndex].isMatchUp=true
                    cards[index].isMatchUp=true
                }
                cards[index].isFaceUp=true
                indexOfthecardFaceup=nil
            }else{
                for i in cards.indices{
                    cards[i].isFaceUp=false
                }
                cards[index].isFaceUp=true
                indexOfthecardFaceup=index
            }
        }
        
    }
    init(numberofPairsofCards:Int){
        for _ in 1...numberofPairsofCards{
            let card=Card()
            cards += [card,card]
        }
    }
    
    
}
