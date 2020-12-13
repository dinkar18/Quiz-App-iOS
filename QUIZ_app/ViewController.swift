//
//  ViewController.swift
//  QUIZ_app
// dinkartaneja
//  Created by english on 2019-11-27.
//  Copyright © 2019 english. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var buttons: UIView!
    
    var allques = Database()
    var answer: Bool = false
    var progress =  0
    var position:Int = 0
    var scor:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = allques.questions[position].ques
        progressbar.progress = Float(progressbar.progress) + 0.05
        
    }
    
    
    
    @IBAction func answer(_ sender: UIButton) {
        if sender.tag == 1{
            answer = true
        }else if sender.tag == 2{
            answer = false
        }
        check()
        nxtques()
        progressbar.progress = Float(progressbar.progress) + 0.05
    }
    


    func check(){
        if answer == allques.questions[position].ans{
            update()
            if position < 19{
            popright()
            }
            
        }
        else{
            if position < 19{
            popwrong()
            }
        }
        count.text = "\(position + 2)/20"
    }
    
    func update(){
        scor += 1
        score.text = "Score : \(scor)"
        
    }
    
    func nxtques(){
        if position < 19{
        position = position + 1
        question.text = allques.questions[position].ques
        }
        else{
            print("Quiz is Over")
            question.text = "Quiz Time Over"
            buttons.isHidden = true
            
            
            let alertController = UIAlertController(title: "Thanks for Playing", message: "You Played really well. you have scored \(scor) points", preferredStyle: .alert)
            
            // Create OK button
            let OKAction = UIAlertAction(title: "Exit", style: .default) { (action:UIAlertAction!) in
                
                // Code in this block will trigger when OK button tapped.
                
                exit(0);
            }
            alertController.addAction(OKAction)
            
            // Create Cancel button
            let cancelAction = UIAlertAction(title: "Restart", style: .cancel) { (action:UIAlertAction!) in
                
                self.restart()
            }
            alertController.addAction(cancelAction)
            
            // Present Dialog message
            self.present(alertController, animated: true, completion:nil)
            
            
            
            
            
            
//            let alert = UIAlertController(title: "Thanks for Playing", message: " ", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
//                NSLog("The \"OK\" alert occured.")
//                self.restart()
//            }))
//            self.present(alert, animated: true, completion: nil)
            
            
        }
    }
    
    func restart(){
        position = 0
        count.text = "\(position + 1)/20"
        scor = 0
        score.text = "Score : \(scor)"
        question.text = allques.questions[position].ques
        buttons.isHidden = false
        progressbar.progress = 1
    }
  
    func popright(){
        let alert = UIAlertController(title: "Right Answer", message: "\n\n Lets Face Next Question!!", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)

        // change to desired number of seconds (in this case 5 seconds)
        let when = DispatchTime.now() + 0.9
        DispatchQueue.main.asyncAfter(deadline: when){
            // your code with delay
            alert.dismiss(animated: true, completion: nil)
        }
    }
    func popwrong(){
        let alert = UIAlertController(title: "Wrong Answer", message: "\n\n OOPS!! Better luck next time.", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)

        // change to desired number of seconds (in this case 5 seconds)
        let when = DispatchTime.now() + 0.9
        DispatchQueue.main.asyncAfter(deadline: when){
            // your code with delay
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
    

}

