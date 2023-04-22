//
//  ViewController.swift
//  superCounterTwo
//
//  Created by Алексей Налимов on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var counter: UILabel! // counter field
    @IBOutlet weak private var history: UITextField! // change history text field
    @IBOutlet weak private var reset: UIButton! // reset button
    @IBOutlet weak private var minus: UIButton! //button to reduce the counter
    @IBOutlet weak private var plus: UIButton! // add counter button
    var counterValue = 0 // variable for the counter
    var dateAndTime = NSDate() //variable for displaying the current date and time
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: \(counterValue)"
    }
        
        @IBAction private func reset(_ sender: Any) {
            resetCounter()
        }
        private func resetCounter() {
            counterValue = 0
            counter.text = "Значение счётчика: \(counterValue)"
            history.text = "\(dateAndTime) значение сброшено"
        }
        
        
        @IBAction private func plus(_ sender: Any) {
            incrementCounter()
        }
        
        private func incrementCounter() {
            counterValue += 1
            counter.text = "Значение счётчика: \(counterValue)"
            history.text = "\(dateAndTime) значение изменено на +1"
        }
        
        @IBAction private func minus(_ sender: Any) {
            reductionCounter()
        }
        private func reductionCounter() {
            counterValue -= 1
            history.text = "\(dateAndTime) значение изменено на -1"
            if counterValue < 0 {
                counterValue = 0
                history.text = "\(dateAndTime) попытка уменьшить значение счётчика ниже 0"
            }
            counter.text = "Значение счётчика: \(counterValue)"
        }
    
}

