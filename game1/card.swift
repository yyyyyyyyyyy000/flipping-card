//
//  card.swift
//  game1
//
//  Created by 无敌帅的yyyyy on 2018/11/20.
//  Copyright © 2018年 无敌帅的yyyy. All rights reserved.
//

import Foundation
struct Card{
    var isFaceUp=false
    var isMatchUp=false
    var identifier:Int
    
    static var identifierFactory=0
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return Card.identifierFactory
    }
    init(){
        self.identifier=Card.getUniqueIdentifier()
    }
    
    
    
    
}
