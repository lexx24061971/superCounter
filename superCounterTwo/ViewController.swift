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
    var a = 0 // variable for the counter
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: \(a)"
    }
    var b = NSDate() //variable for displaying the current date and time
    
    
    @IBAction private func reset(_ sender: Any) {
        a = 0
        history.text = "\(b) значение сброшено"
        viewDidLoad()
    }
    //actions when pressing the reset button
    
    
    @IBAction private func plus(_ sender: Any) {
        a += 1
        history.text = "\(b) значение изменено на +1"
        viewDidLoad()
    }
    
    // actions when clicking on the plus button
    
    @IBAction private func minus(_ sender: Any) {
        a -= 1
        history.text = "\(b) значение изменено на -1"
        if a < 0 {
            a = 0
            history.text = "\(b) попытка уменьшить значение счётчика ниже 0"
        }
        viewDidLoad()
    }
    // actions when clicking on the minus button
    
}

