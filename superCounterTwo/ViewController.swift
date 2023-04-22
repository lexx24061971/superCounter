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

    @IBAction func reset(_ sender: Any) {
        a = 0
        viewDidLoad()
    }
    
    @IBAction func plus(_ sender: Any) {
        a += 1
        viewDidLoad()
    }
    
    @IBAction func minus(_ sender: Any) {
        a -= 1
        if a < 0 {
            a = 0
        }
        viewDidLoad()
    }
    
}

