//
//  ViewController.swift
//  firstHw
//
//  Created by salo khizanishvili on 06.07.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNum: UILabel!
    @IBOutlet weak var secondNum: UILabel!
    @IBOutlet weak var thirdNum: UILabel!
    @IBOutlet weak var fourthNum: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

  @IBAction func slider(_ sender: UISlider) {
        firstNum.text = String(Int.random(in: 0...Int(sender.value)))
        secondNum.text = String(Int.random(in: 0...Int(sender.value)))
        thirdNum.text = String(Int.random(in: 0...Int(sender.value)))
    }
    
    @IBAction func text(_ sender: UITextField) {
        let input = sender.text
        var firstIntNum = 0
        var secondIntNum = 0
        var thirdIntNum = 0
        if let frst = firstNum.text, let scnd = secondNum.text, let thrd = thirdNum.text {
            firstIntNum = Int(frst)!
            secondIntNum = Int(scnd)!
            thirdIntNum = Int(thrd)!
        }
        let myArray = [firstIntNum, secondIntNum, thirdIntNum]
        let max = myArray.max()!
        let min = myArray.min()!
        
        if input == "max" {
            fourthNum.text = "maximum is " + String(max)
        }
        else if input == "average" {
            fourthNum.text = "average is " + String((myArray[0] + myArray[1] + myArray[2])/3)
        }
        else if input == "min"{
            fourthNum.text = "minimum is " + String(min)
        }
        else if input == "sum"{
            fourthNum.text = "sum is " + String(myArray[0] + myArray[1] + myArray[2])
        }
        else {
            fourthNum.text = "the answer is..."
        }
        
    }
    
}

