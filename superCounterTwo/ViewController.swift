//
//  ViewController.swift
//  superCounterTwo
//
//  Created by Алексей Налимов on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel! // поле счетчика
    @IBOutlet weak var history: UITextField! // текстовое поле истории изменений
    @IBOutlet weak var reset: UIButton! // кнопка обнуления
    @IBOutlet weak var minus: UIButton! //кнопка убавить счетчик
    @IBOutlet weak var plus: UIButton! // кнопка прибавить счетчик
    var a = 0 // переменная для счетчика
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: \(a)"
        // Do any additional setup after loading the view.
    }


}

