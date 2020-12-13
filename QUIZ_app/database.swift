//
//  database.swift
//  QUIZ_app
//
//  Created by english on 2019-11-27.
//  Copyright © 2019 english. All rights reserved.
//

import Foundation

class Database{
    var questions = [Question]()
    
    init() {
       
        questions.append(Question(ques: "The Ring of Fire \n - where most volcanoes are located\n and most earthquakes occur \n - encircles the Pacific Ocean.", ans: true))
        questions.append(Question(ques: "If you cut an earthworm in half,\nboth halves can regrow their body.", ans: false))
        questions.append(Question(ques: "Coca-Cola originally contained cocaine.", ans: true))
        questions.append(Question(ques: "The first big Hollywood \nsummer blockbuster was Jaws.", ans: true))
        questions.append(Question(ques: "The biceps muscle in the upper arm\n is the strongest muscle in the \nhuman body.", ans: false))
        questions.append(Question(ques: "The launch of Sputnik in 1957 \ninaugurated the space age.", ans: true))
        questions.append(Question(ques: "Judaism, Christianity, and Islam \ncan all be tied to the same individual.", ans: true))
        questions.append(Question(ques: "Elephants walk \nas quietly as cats.", ans: true))
        questions.append(Question(ques: "Your fingernails and hair \nkeep growing after you die.", ans: false))
        questions.append(Question(ques: "Lightning never strikes \nin the same place twice.", ans: false))
        questions.append(Question(ques: "If you cry in space the tears \njust stick to your face.", ans: true))
        questions.append(Question(ques: "Humans can distinguish between\n over a trillion different smells.", ans: true))
        questions.append(Question(ques: "Napoleon Bonaparte \nwas extremely short.", ans: false))
        questions.append(Question(ques: "Adults have fewer bones \nthan babies do.", ans: true))
        questions.append(Question(ques: "Goldfish only have a memory \nof three seconds.", ans: false))
        questions.append(Question(ques: "There are more cells of bacteria in your body \nthan there are human cells.", ans: true))
        questions.append(Question(ques: "It costs the U.S. Mint more to make pennies \nand nickels than the coins are\n actually worth.", ans: true))
        questions.append(Question(ques: "Water spirals down the plughole \nin opposite directions in the northern \nand southern hemispheres.", ans: false))
        questions.append(Question(ques: "Drinking alcohol \nkills brain cells.", ans: false))
        questions.append(Question(ques: "Humans can’t breathe \nand swallow at the same time.", ans: true))
        
    }
    
}
