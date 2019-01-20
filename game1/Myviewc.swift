//
//  Myviewc.swift
//  game1
//
//  Created by 无敌帅的yyyyy on 2019/1/18.
//  Copyright © 2019年 无敌帅的yyyy. All rights reserved.
//

import UIKit

class Myviewc: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var themes = ["1":"🐯🐸🐽🐷🙈","2":"ℏℏ∪⊈∌≥","3":"▼▽☛▲✤"]
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ThemeName = (sender as? UIButton)!.currentTitle, let string = themes[ThemeName],let destination = segue.destination as? ViewController{
            
        }
        
        
        
    }
    

}
