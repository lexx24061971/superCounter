//
//  ViewController.swift
//  superCounterTwo
//
//  Created by Алексей Налимов on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var history: UITextField!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var plus: UIButton!
    var a = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: 0"
        // Do any additional setup after loading the view.
    }


}

