//
//  ViewController.swift
//  superCounterTwo
//
//  Created by Алексей Налимов on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel! // counter field
    @IBOutlet weak var history: UITextField! // change history text field
    @IBOutlet weak var reset: UIButton! // reset button
    @IBOutlet weak var minus: UIButton! //button to reduce the counter
    @IBOutlet weak var plus: UIButton! // add counter button
    var a = 0 // variable for the counter
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: \(a)"
        // Do any additional setup after loading the view.
    }
    var b = NSDate() //variable for displaying the current date and time
    
    
    @IBAction func reset(_ sender: Any) {
        a = 0
        history.text = "\(b) значение сброшено"
        viewDidLoad()
    }
    //actions when pressing the reset button
    
    
    @IBAction func plus(_ sender: Any) {
        a += 1
        history.text = "\(b) значение изменено на +1"
        viewDidLoad()
    }
    
    // actions when clicking on the plus button
    
    @IBAction func minus(_ sender: Any) {
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

